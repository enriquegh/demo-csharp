using Common;
using Common.SauceLabs.SauceLabs;
using NUnit.Framework;
using NUnit.Framework.Interfaces;
using OpenQA.Selenium;

namespace SeleniumNunit.BestPractices
{
    [TestFixture()]
    [Category("AcceptanceTests")]
    public class BaseTest
    {
        [SetUp]
        public void ExecuteBeforeEveryTestMethod()
        {
            Driver = new WebDriverFactory().CreateSauceDriver(TestContext.CurrentContext.Test.Name);
        }
        [TearDown]
        public void CleanUpAfterEveryTestMethod()
        {
            new SauceJavaScriptExecutor(Driver).LogTestStatus(TestContext.CurrentContext.Result.Outcome.Status == TestStatus.Passed);
            Driver?.Quit();
        }
        public IWebDriver Driver { get; set; }
    }
}
