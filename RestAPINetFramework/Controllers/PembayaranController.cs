using Newtonsoft.Json;
using RestAPINetFramework.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace RestAPINetFramework.Controllers
{
    public class PembayaranController : ApiController
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webapi_conn"].ConnectionString);
      
        public Komisi GetKomisi()
        {
            var model = new Komisi();
            var models = new List<ListKomisi>();
            var mySqlCommand = new SqlCommand
            {
                Connection = con,
                CommandText = "EXEC getNominal"
            };
            con.Open();
            var mySqlDataReader = mySqlCommand.ExecuteReader();
            while (mySqlDataReader.Read())
            {

                models.Add(new ListKomisi
                {
                    Name = mySqlDataReader["Name"].ToString(),
                    Bulan = mySqlDataReader["Bulan"].ToString(),
                    Omzet = mySqlDataReader["Omzet"].ToString(),
                    KomisiPersen = mySqlDataReader["KomisiPersen"].ToString(),
                    KomisiNominal = mySqlDataReader["KomisiNominal"].ToString()
                });
            }
            con.Close();
            model.Data = models;

            return model;
        }

        // POST: api/Pembayaran
        public string Post(Pembayaran pembayaran)
        {
            string msg = "";
            if (pembayaran != null)
            {
                SqlCommand cmd = new SqlCommand("AddPembayaran", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@KodePelanggan", pembayaran.KodePelanggan);
                cmd.Parameters.AddWithValue("@NamaPelanggan", pembayaran.NamaPelanggan);
                cmd.Parameters.AddWithValue("@Date", pembayaran.Date);
                cmd.Parameters.AddWithValue("@JumlahPembayaran", pembayaran.JumlahPembayaran);
                cmd.Parameters.AddWithValue("@JenisPembayaran", pembayaran.JenisPembayaran);
                cmd.Parameters.AddWithValue("@TransactionNumber", pembayaran.TransactionNumber);
                cmd.Parameters.AddWithValue("@Keterangan", pembayaran.Keterangan);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    msg = "Data has been inserted";
                }
                else
                {
                    msg = "Error";
                }
            }
            return msg;
        }

    }
}
