using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CharityAuction.customer
{
    public class CustomerUpdate
    {
        public CustomerUpdate(string userId, Customer s)
        {
            DataIslemleri di = new DataIslemleri();
            var sql = "UPDATE Customers Set  [FName] ='" + s.FName + "',[LName] ='" + s.LName + "',[Email] ='" + s.Email + "',[BDay] ='" + s.BDay + "' WHERE [ID] = '" + ID + "'";
            di.ExecuteNonQuery(sql);
        }
    
    public  object ID { get; set; }}

    public class CustomerInsert
    {
        public CustomerInsert(Customer s)
        {
            DataIslemleri di = new DataIslemleri();
            var sql = "INSERT INTO Customer.Customer VALUES('" + s.userId + "','" + s.FName + "','" + s.LName + "','" + s.Email + "','" + s.BDay + "')";
            di.ExecuteNonQuery(sql);
        }
    }
    public class CustomerDelete
    {
        public CustomerDelete(string userId)
        {
            DataIslemleri di = new DataIslemleri();
            var sql = "DELETE FROM Customers WHERE CustomerID = '" + userId + "')";
            di.ExecuteNonQuery(sql);
        }
    }
}