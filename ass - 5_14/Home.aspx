<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Home.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
     <div class="hero">
      <h1>Book an Appointment Now</h1>
      <h3>
        Get the <strong>best Doctors</strong> and state of the art medical
        facilities. A true promise of quality
      </h3>
      <div class="call-to-action-cont">
          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Booking.aspx" CssClass="call-to-action-btn">
              Booknow
         </asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Booking.aspx" CssClass="call-to-action-btn">
            Booknow
         </asp:HyperLink>
      </div>
    </div>

    <h2 class="our-services-text col-span-1">Our Services</h2>
      <p class="our-services-paragraph col-span-1">
        Our clinic provides the <em>best</em> medical facilities in Suva. With
        state of the art medical imaging technology and the best doctors in the
        Ocenia-Pacific region, get the treatment your body deserves
      </p>
     <section class="our-services">
      
      <article class="our-services-cards">
        <img
          title="stethescope"
          width="400"
          height="280"
          src="images/stetescope_image.jpg"
          alt="image of stethescope"
        />
        <h3>Appointment Booking</h3>
        <p>
          Tired of waiting lines? <strong>Book an appointment</strong> and skip
          the wait.
        </p>
      </article>

      <article class="our-services-cards">
        <img
          title="checkup"
          width="400"
          height="280"
          src="images/doctor_image.jpg"
          alt="general checkup image"
        />
        <h3>General Checkup</h3>
        <p>A state-of-the-art full body checkup</p>
      </article>

      <article class="our-services-cards">
        <img
          title="heart monitor"
          width="400"
          height="280"
          src="images/ecg_image.jpg"
          alt="heart monitor"
        />
        <h3>Surgery</h3>
        <p>Sticks and stones may break your bones, but we'll help fix them</p>
      </article>
    </section>
</asp:Content>