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
using System.Xml.Linq;

namespace RestAPINetFramework.Controllers
{
    public class MainController : ApiController
    {
        //Tes commit
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webapi_conn"].ConnectionString);

        [Route("GetKomisi")]
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
            model.Success = "true";
            model.Data = models;

            return model;
        }

        [Route("ListMarketing")]
        public Marketings GetMarketing(Marketing marketing)
        {
            var model = new Marketings();
            var models = new List<ListMarketing>();
            SqlCommand cmd = new SqlCommand("getMarketing", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", marketing.ID);
            con.Open();
            var mySqlDataReader = cmd.ExecuteReader();
            while (mySqlDataReader.Read())
            {
                 
                models.Add(new ListMarketing
                {
                    ID = mySqlDataReader["ID"].ToString(),
                    Name = mySqlDataReader["Name"].ToString()
                });
            }
            con.Close();
            model.Success = "true";
            model.Data = models;

            return model;
        }

        [Route("ListPembayaran")]
        public Pembayarans GetPembayaran(Pembayaran pembayaran)
        {
            var model = new Pembayarans();
            var models = new List<ListPembayaran>();
            SqlCommand cmd = new SqlCommand("getPembayaran", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", pembayaran.ID);
            con.Open();
            var mySqlDataReader = cmd.ExecuteReader();
            while (mySqlDataReader.Read())
            {
                models.Add(new ListPembayaran
                {
                    ID = mySqlDataReader["ID"].ToString(),
                    KodePelanggan = mySqlDataReader["KodePelanggan"].ToString(),
                    NamaPelanggan = mySqlDataReader["NamaPelanggan"].ToString(),
                    Date = mySqlDataReader["Date"].ToString(),
                    JumlahPembayaran = mySqlDataReader["JumlahPembayaran"].ToString(),
                    JenisPembayaran = mySqlDataReader["JenisPembayaran"].ToString(),
                    TransactionNumber = mySqlDataReader["TransactionNumber"].ToString(),
                    Keterangan = mySqlDataReader["Keterangan"].ToString()
                });
            }
            con.Close();
            model.Success = "true";
            model.Data = models;

            return model;
        }

        [Route("ListPenjualan")]
        public Penjualans GetPenjualan(Penjualan penjualan)
        {
            var model = new Penjualans();
            var models = new List<ListPenjualan>();
            SqlCommand cmd = new SqlCommand("getPenjualan", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", penjualan.ID);
            con.Open();
            var mySqlDataReader = cmd.ExecuteReader();
            while (mySqlDataReader.Read())
            {
                models.Add(new ListPenjualan
                {
                    ID = mySqlDataReader["ID"].ToString(),
                    TransactionNumber = mySqlDataReader["Transaction_Number"].ToString(),
                    MarketingID = mySqlDataReader["Marketing_ID"].ToString(),
                    Date = mySqlDataReader["Date"].ToString(),
                    CargoFee = mySqlDataReader["Cargo_Fee"].ToString(),
                    TotalBalance = mySqlDataReader["Total_Balance"].ToString(),
                    GrandTotal = mySqlDataReader["Grand_Total"].ToString()
                });
            }
            con.Close();
            model.Success = "true";
            model.Data = models;

            return model;
        }

        [Route("Marketing")]
        public string PostMarketing(Marketing marketing)
        {
            string msg = "";
            if (marketing != null)
            {
                SqlCommand cmd = new SqlCommand("CrudMarketing", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", marketing.ID);
                cmd.Parameters.AddWithValue("@Name", marketing.Name);
                cmd.Parameters.AddWithValue("@Code", marketing.Code);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    msg = "Data has been updated";
                }
                else
                {
                    msg = "Error";
                }
            }
            else
            {
                msg = "Please fill the blank!";
            }
            return msg;
        }

        [Route("Pembayaran")]
        public string PostPembayaran(Pembayaran pembayaran)
        {
            string msg = "";
            if (pembayaran != null)
            {
                SqlCommand cmd = new SqlCommand("CrudPembayaran", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", pembayaran.ID);
                cmd.Parameters.AddWithValue("@KodePelanggan", pembayaran.KodePelanggan);
                cmd.Parameters.AddWithValue("@NamaPelanggan", pembayaran.NamaPelanggan);
                cmd.Parameters.AddWithValue("@Date", pembayaran.Date);
                cmd.Parameters.AddWithValue("@JumlahPembayaran", pembayaran.JumlahPembayaran);
                cmd.Parameters.AddWithValue("@JenisPembayaran", pembayaran.JenisPembayaran);
                cmd.Parameters.AddWithValue("@TransactionNumber", pembayaran.TransactionNumber);
                cmd.Parameters.AddWithValue("@Keterangan", pembayaran.Keterangan);
                cmd.Parameters.AddWithValue("@Code", pembayaran.Code);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    msg = "Data has been updated";
                }
                else
                {
                    msg = "Error";
                }
            }
            else {
                msg = "Please fill the blank!";
            }
            return msg;
        }

        [Route("Penjualan")]
        public string PostPenjualan(Penjualan penjualan)
        {
            string msg = "";
            if (penjualan != null)
            {
                SqlCommand cmd = new SqlCommand("CrudPenjualan", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", penjualan.ID);
                cmd.Parameters.AddWithValue("@TransactionNumber", penjualan.TransactionNumber);
                cmd.Parameters.AddWithValue("@MarketingID", penjualan.MarketingID);
                cmd.Parameters.AddWithValue("@Date", penjualan.Date);
                cmd.Parameters.AddWithValue("@CargoFee", penjualan.CargoFee);
                cmd.Parameters.AddWithValue("@TotalBalance", penjualan.TotalBalance);
                cmd.Parameters.AddWithValue("@GrandTotal", penjualan.GrandTotal);
                cmd.Parameters.AddWithValue("@Code", penjualan.Code);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    msg = "Data has been updated";
                }
                else
                {
                    msg = "Error";
                }
            }
            else
            {
                msg = "Please fill the blank!";
            }
            return msg;
        }

    }
}
