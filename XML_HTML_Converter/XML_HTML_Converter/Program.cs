using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Xsl;

namespace XML_HTML_Converter
{
    class Program
    {
        static void Main(string[] args)
        {
            XmlUrlResolver resolver = new XmlUrlResolver();
            resolver.Credentials = System.Net.CredentialCache.DefaultCredentials;
            // transform xml file to HTML file
            XslTransform transform = new XslTransform();
            transform.Load(@"..\..\XLST_Transformation.xslt", resolver);
            transform.Transform(@"..\..\XML_Report.xml", @"..\HTML_Report.html", resolver);
        }
    }
}
