namespace CharityAuction.customer
{
    public class Customer
    {

        private string _userId;
        private string _FName;
        private string _LName;
        private string _Email;
        private string _BDay;

        public string userId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        public string FName { get; set; }
        public string LName { get; set; }
        public string Email { get; set; }
        public string BDay { get; set; }


        public Customer(string a, string b, string c, string d, string e)
        {
            _userId = a;
            _FName = b;
            _LName = c;
            _Email = d;
            _BDay = e;

        }



    }
}