<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<nav class="navbar navbar-light navbar-vertical navbar-expand-xl navbar-inverted">

 <div class="d-flex align-items-center">
   <div class="toggle-icon-wrapper">

     <button class="btn navbar-toggler-humburger-icon navbar-vertical-toggle" data-bs-toggle="tooltip" data-bs-placement="left" title="Toggle Navigation"><span class="navbar-toggle-icon"><span class="toggle-line"></span></span></button>

   </div><a class="navbar-brand" href="${pageContext.request.contextPath}/resources/public/index.html">
     <div class="d-flex align-items-center py-3"><img class="me-2" src="${pageContext.request.contextPath}/resources/public/assets/img/icons/spot-illustrations/falcon.png" alt="" width="40" /><span class="font-sans-serif text-primary">falcon</span>
     </div>
   </a>
 </div>
 <div class="collapse navbar-collapse" id="navbarVerticalCollapse">
   <div class="navbar-vertical-content scrollbar">
     <ul class="navbar-nav flex-column mb-3" id="navbarVerticalNav">
       <li class="nav-item">
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#dashboard" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="dashboard">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-chart-pie"></span></span><span class="nav-link-text ps-1">Dashboard</span>
           </div>
         </a>
         <ul class="nav collapse" id="dashboard">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/index.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Default</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/dashboard/analytics.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Analytics</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/dashboard/crm.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">CRM</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/dashboard/e-commerce.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">E commerce</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/dashboard/lms.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">LMS</span><span class="badge rounded-pill ms-2 badge-subtle-success">New</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/dashboard/project-management.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Management</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/dashboard/saas.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">SaaS</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/dashboard/support-desk.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Support desk</span><span class="badge rounded-pill ms-2 badge-subtle-success">New</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
       </li>
       <li class="nav-item">
         <!-- label-->
         <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
           <div class="col-auto navbar-vertical-label">App
           </div>
           <div class="col ps-0">
             <hr class="mb-0 navbar-vertical-divider" />
           </div>
         </div>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/calendar.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-calendar-alt"></span></span><span class="nav-link-text ps-1">Calendar</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/chat.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-comments"></span></span><span class="nav-link-text ps-1">Chat</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#email" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="email">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-envelope-open"></span></span><span class="nav-link-text ps-1">Email</span>
           </div>
         </a>
         <ul class="nav collapse" id="email">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/email/inbox.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Inbox</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/email/email-detail.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Email detail</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/email/compose.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Compose</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#events" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="events">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-calendar-day"></span></span><span class="nav-link-text ps-1">Events</span>
           </div>
         </a>
         <ul class="nav collapse" id="events">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/events/create-an-event.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create an event</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/events/event-detail.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Event detail</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/events/event-list.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Event list</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#e-commerce" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="e-commerce">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-shopping-cart"></span></span><span class="nav-link-text ps-1">E commerce</span>
           </div>
         </a>
         <ul class="nav collapse" id="e-commerce">
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#product" data-bs-toggle="collapse" aria-expanded="false" aria-controls="e-commerce">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Product</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="product">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/product/product-list.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Product list</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/product/product-grid.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Product grid</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/product/product-details.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Product details</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/product/add-product.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Add product</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#orders" data-bs-toggle="collapse" aria-expanded="false" aria-controls="e-commerce">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Orders</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="orders">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/orders/order-list.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Order list</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/orders/order-details.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Order details</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/customers.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Customers</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/customer-details.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Customer details</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/shopping-cart.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Shopping cart</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/checkout.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Checkout</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/billing.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Billing</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-commerce/invoice.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Invoice</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#e-learning" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="e-learning">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">E learning</span><span class="badge rounded-pill ms-2 badge-subtle-success">New</span>
           </div>
         </a>
         <ul class="nav collapse" id="e-learning">
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#course" data-bs-toggle="collapse" aria-expanded="false" aria-controls="e-learning">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Course</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="course">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-learning/course/course-list.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Course list</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-learning/course/course-grid.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Course grid</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-learning/course/course-details.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Course details</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-learning/course/create-a-course.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Create a course</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-learning/student-overview.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Student overview</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/e-learning/trainer-profile.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Trainer profile</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/kanban.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fab fa-trello"></span></span><span class="nav-link-text ps-1">Kanban</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#social" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="social">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-share-alt"></span></span><span class="nav-link-text ps-1">Social</span>
           </div>
         </a>
         <ul class="nav collapse" id="social">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/social/feed.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Feed</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/social/activity-log.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Activity log</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/social/notifications.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Notifications</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/social/followers.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Followers</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#support-desk" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="support-desk">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-ticket-alt"></span></span><span class="nav-link-text ps-1">Support desk</span>
           </div>
         </a>
         <ul class="nav collapse" id="support-desk">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/support-desk/table-view.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Table view</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/support-desk/card-view.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Card view</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/support-desk/contacts.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Contacts</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/support-desk/contact-details.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Contact details</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/support-desk/tickets-preview.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Tickets preview</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/support-desk/quick-links.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Quick links</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/support-desk/reports.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Reports</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
       </li>
       <li class="nav-item">
         <!-- label-->
         <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
           <div class="col-auto navbar-vertical-label">Pages
           </div>
           <div class="col ps-0">
             <hr class="mb-0 navbar-vertical-divider" />
           </div>
         </div>
         <!-- parent pages--><a class="nav-link active" href="${pageContext.request.contextPath}/resources/public/pages/starter.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-flag"></span></span><span class="nav-link-text ps-1">Starter</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/landing.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-globe"></span></span><span class="nav-link-text ps-1">Landing</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#authentication" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="authentication">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-lock"></span></span><span class="nav-link-text ps-1">Authentication</span>
           </div>
         </a>
         <ul class="nav collapse" id="authentication">
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#simple" data-bs-toggle="collapse" aria-expanded="false" aria-controls="authentication">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Simple</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="simple">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/simple/login.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Login</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/simple/logout.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Logout</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/simple/register.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Register</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/simple/forgot-password.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Forgot password</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/simple/confirm-mail.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Confirm mail</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/simple/reset-password.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Reset password</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/simple/lock-screen.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Lock screen</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#card" data-bs-toggle="collapse" aria-expanded="false" aria-controls="authentication">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Card</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="card">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/card/login.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Login</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/card/logout.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Logout</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/card/register.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Register</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/card/forgot-password.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Forgot password</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/card/confirm-mail.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Confirm mail</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/card/reset-password.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Reset password</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/card/lock-screen.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Lock screen</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#split" data-bs-toggle="collapse" aria-expanded="false" aria-controls="authentication">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Split</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="split">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/split/login.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Login</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/split/logout.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Logout</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/split/register.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Register</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/split/forgot-password.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Forgot password</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/split/confirm-mail.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Confirm mail</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/split/reset-password.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Reset password</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/split/lock-screen.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Lock screen</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/authentication/wizard.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Wizard</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#authentication-modal" data-bs-toggle="modal">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Modal</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#user" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="user">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-user"></span></span><span class="nav-link-text ps-1">User</span>
           </div>
         </a>
         <ul class="nav collapse" id="user">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/user/profile.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Profile</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/user/settings.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Settings</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#pricing" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="pricing">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-tags"></span></span><span class="nav-link-text ps-1">Pricing</span>
           </div>
         </a>
         <ul class="nav collapse" id="pricing">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/pricing/pricing-default.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Pricing default</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/pricing/pricing-alt.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Pricing alt</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#faq" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="faq">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-question-circle"></span></span><span class="nav-link-text ps-1">Faq</span>
           </div>
         </a>
         <ul class="nav collapse" id="faq">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/faq/faq-basic.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Faq basic</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/faq/faq-alt.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Faq alt</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/faq/faq-accordion.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Faq accordion</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#errors" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="errors">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-exclamation-triangle"></span></span><span class="nav-link-text ps-1">Errors</span>
           </div>
         </a>
         <ul class="nav collapse" id="errors">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/errors/404.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">404</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/errors/500.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">500</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#miscellaneous" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="miscellaneous">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-thumbtack"></span></span><span class="nav-link-text ps-1">Miscellaneous</span>
           </div>
         </a>
         <ul class="nav collapse" id="miscellaneous">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/miscellaneous/associations.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Associations</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/miscellaneous/invite-people.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Invite people</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/pages/miscellaneous/privacy-policy.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Privacy policy</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#Layouts" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="Layouts">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="far fa-window-restore"></span></span><span class="nav-link-text ps-1">Layouts</span>
           </div>
         </a>
         <ul class="nav collapse" id="Layouts">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/demo/navbar-vertical.html" target="_blank">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Navbar vertical</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/demo/navbar-top.html" target="_blank">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Top nav</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/demo/navbar-double-top.html" target="_blank">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Double top</span><span class="badge rounded-pill ms-2 badge-subtle-success">New</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/demo/combo-nav.html" target="_blank">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Combo nav</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
       </li>
       <li class="nav-item">
         <!-- label-->
         <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
           <div class="col-auto navbar-vertical-label">Modules
           </div>
           <div class="col ps-0">
             <hr class="mb-0 navbar-vertical-divider" />
           </div>
         </div>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#forms" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="forms">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-file-alt"></span></span><span class="nav-link-text ps-1">Forms</span>
           </div>
         </a>
         <ul class="nav collapse" id="forms">
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#basic" data-bs-toggle="collapse" aria-expanded="false" aria-controls="forms">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Basic</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="basic">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/basic/form-control.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Form control</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/basic/input-group.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Input group</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/basic/select.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Select</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/basic/checks.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Checks</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/basic/range.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Range</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/basic/layout.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Layout</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#advance" data-bs-toggle="collapse" aria-expanded="false" aria-controls="forms">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Advance</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="advance">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/advance/advance-select.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Advance select</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/advance/date-picker.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Date picker</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/advance/editor.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Editor</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/advance/emoji-button.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Emoji button</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/advance/file-uploader.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">File uploader</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/advance/input-mask.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Input mask</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/advance/range-slider.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Range slider</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/advance/rating.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Rating</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/floating-labels.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Floating labels</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/wizard.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Wizard</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/forms/validation.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Validation</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#tables" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="tables">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-table"></span></span><span class="nav-link-text ps-1">Tables</span>
           </div>
         </a>
         <ul class="nav collapse" id="tables">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/tables/basic-tables.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Basic tables</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/tables/advance-tables.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Advance tables</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/tables/bulk-select.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Bulk select</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#charts" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="charts">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-chart-line"></span></span><span class="nav-link-text ps-1">Charts</span>
           </div>
         </a>
         <ul class="nav collapse" id="charts">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/chartjs.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Chartjs</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/d3js.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">D3js</span><span class="badge rounded-pill ms-2 badge-subtle-success">New</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#eCharts" data-bs-toggle="collapse" aria-expanded="false" aria-controls="charts">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">ECharts</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="eCharts">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/line-charts.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Line charts</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/bar-charts.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Bar charts</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/candlestick-charts.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Candlestick charts</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/geo-map.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Geo map</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/scatter-charts.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Scatter charts</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/pie-charts.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Pie charts</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/gauge-charts.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Gauge charts</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/radar-charts.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Radar charts</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/heatmap-charts.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Heatmap charts</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/charts/echarts/how-to-use.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">How to use</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#icons" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="icons">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-shapes"></span></span><span class="nav-link-text ps-1">Icons</span>
           </div>
         </a>
         <ul class="nav collapse" id="icons">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/icons/font-awesome.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Font awesome</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/icons/bootstrap-icons.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Bootstrap icons</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/icons/feather.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Feather</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/icons/material-icons.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Material icons</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#maps" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="maps">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-map"></span></span><span class="nav-link-text ps-1">Maps</span>
           </div>
         </a>
         <ul class="nav collapse" id="maps">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/maps/google-map.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Google map</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/maps/leaflet-map.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Leaflet map</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#components" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="components">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-puzzle-piece"></span></span><span class="nav-link-text ps-1">Components</span>
           </div>
         </a>
         <ul class="nav collapse" id="components">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/accordion.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Accordion</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/alerts.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Alerts</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/anchor.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Anchor</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/animated-icons.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Animated icons</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/background.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Background</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/badges.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Badges</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/bottom-bar.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Bottom bar</span><span class="badge rounded-pill ms-2 badge-subtle-success">New</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/breadcrumbs.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Breadcrumbs</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/buttons.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Buttons</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/calendar.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Calendar</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/cards.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Cards</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#carousel" data-bs-toggle="collapse" aria-expanded="false" aria-controls="components">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Carousel</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="carousel">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/carousel/bootstrap.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Bootstrap</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/carousel/swiper.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Swiper</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/collapse.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Collapse</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/cookie-notice.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Cookie notice</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/countup.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Countup</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/dropdowns.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Dropdowns</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/jquery-components.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Jquery</span><span class="badge rounded-pill ms-2 badge-subtle-success">New</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/list-group.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">List group</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/modals.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Modals</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#navs-_and_-Tabs" data-bs-toggle="collapse" aria-expanded="false" aria-controls="components">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Navs &amp; Tabs</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="navs-_and_-Tabs">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/navs.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Navs</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/navbar.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Navbar</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/vertical-navbar.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Navbar vertical</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/top-navbar.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Top nav</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/double-top-navbar.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Double top</span><span class="badge rounded-pill ms-2 badge-subtle-success">New</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/combo-navbar.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Combo nav</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/navs-and-tabs/tabs.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Tabs</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/offcanvas.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Offcanvas</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#pictures" data-bs-toggle="collapse" aria-expanded="false" aria-controls="components">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Pictures</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="pictures">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/pictures/avatar.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Avatar</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/pictures/images.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Images</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/pictures/figures.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Figures</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/pictures/hoverbox.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Hoverbox</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/pictures/lightbox.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Lightbox</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/progress-bar.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Progress bar</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/placeholder.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Placeholder</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/pagination.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Pagination</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/popovers.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Popovers</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/scrollspy.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Scrollspy</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/search.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Search</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/sortable.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Sortable</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/spinners.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Spinners</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/timeline.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Timeline</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/toasts.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Toasts</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/tooltips.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Tooltips</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/treeview.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Treeview</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/typed-text.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Typed text</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#videos" data-bs-toggle="collapse" aria-expanded="false" aria-controls="components">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Videos</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="videos">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/videos/embed.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Embed</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/components/videos/plyr.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Plyr</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#utilities" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="utilities">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-fire"></span></span><span class="nav-link-text ps-1">Utilities</span>
           </div>
         </a>
         <ul class="nav collapse" id="utilities">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/background.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Background</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/borders.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Borders</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/clearfix.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Clearfix</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/colors.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Colors</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/colored-links.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Colored links</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/display.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Display</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/flex.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Flex</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/float.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Float</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/focus-ring.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Focus ring</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/grid.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Grid</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/icon-link.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Icon link</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/overlayscrollbar.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Overlay scrollbar</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/position.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Position</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/ratio.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Ratio</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/spacing.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Spacing</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/sizing.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Sizing</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/stretched-link.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Stretched link</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/text-truncation.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Text truncation</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/typography.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Typography</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/vertical-align.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Vertical align</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/vertical-rule.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Vertical rule</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/visibility.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Visibility</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/modules/utilities/visually-hidden.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Visually hidden</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/widgets.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-poll"></span></span><span class="nav-link-text ps-1">Widgets</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#multi-level" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="multi-level">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-layer-group"></span></span><span class="nav-link-text ps-1">Multi level</span>
           </div>
         </a>
         <ul class="nav collapse" id="multi-level">
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#level-two" data-bs-toggle="collapse" aria-expanded="false" aria-controls="multi-level">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Level two</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="level-two">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#!.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 1</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#!.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 2</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#level-three" data-bs-toggle="collapse" aria-expanded="false" aria-controls="multi-level">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Level three</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="level-three">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#!.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 3</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link dropdown-indicator" href="#item-4" data-bs-toggle="collapse" aria-expanded="false" aria-controls="level-three">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 4</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
                 <ul class="nav collapse" id="item-4">
                   <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#!.html">
                       <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 5</span>
                       </div>
                     </a>
                     <!-- more inner pages-->
                   </li>
                   <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#!.html">
                       <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 6</span>
                       </div>
                     </a>
                     <!-- more inner pages-->
                   </li>
                 </ul>
               </li>
             </ul>
           </li>
           <li class="nav-item"><a class="nav-link dropdown-indicator" href="#level-four" data-bs-toggle="collapse" aria-expanded="false" aria-controls="multi-level">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Level four</span>
               </div>
             </a>
             <!-- more inner pages-->
             <ul class="nav collapse" id="level-four">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#!.html">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 6</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
               </li>
               <li class="nav-item"><a class="nav-link dropdown-indicator" href="#item-7" data-bs-toggle="collapse" aria-expanded="false" aria-controls="level-four">
                   <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 7</span>
                   </div>
                 </a>
                 <!-- more inner pages-->
                 <ul class="nav collapse" id="item-7">
                   <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#!.html">
                       <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 8</span>
                       </div>
                     </a>
                     <!-- more inner pages-->
                   </li>
                   <li class="nav-item"><a class="nav-link dropdown-indicator" href="#item-9" data-bs-toggle="collapse" aria-expanded="false" aria-controls="item-7">
                       <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 9</span>
                       </div>
                     </a>
                     <!-- more inner pages-->
                     <ul class="nav collapse" id="item-9">
                       <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#!.html">
                           <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 10</span>
                           </div>
                         </a>
                         <!-- more inner pages-->
                       </li>
                       <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/#!.html">
                           <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Item 11</span>
                           </div>
                         </a>
                         <!-- more inner pages-->
                       </li>
                     </ul>
                   </li>
                 </ul>
               </li>
             </ul>
           </li>
         </ul>
       </li>
       <li class="nav-item">
         <!-- label-->
         <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
           <div class="col-auto navbar-vertical-label">Documentation
           </div>
           <div class="col ps-0">
             <hr class="mb-0 navbar-vertical-divider" />
           </div>
         </div>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/documentation/getting-started.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-rocket"></span></span><span class="nav-link-text ps-1">Getting started</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#customization" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="customization">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-wrench"></span></span><span class="nav-link-text ps-1">Customization</span>
           </div>
         </a>
         <ul class="nav collapse" id="customization">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/documentation/customization/configuration.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Configuration</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/documentation/customization/styling.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Styling</span><span class="badge rounded-pill ms-2 badge-subtle-success">Updated</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/documentation/customization/dark-mode.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Dark mode</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/documentation/customization/plugin.html">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">Plugin</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/documentation/faq.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-question-circle"></span></span><span class="nav-link-text ps-1">Faq</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/documentation/gulp.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fab fa-gulp"></span></span><span class="nav-link-text ps-1">Gulp</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/documentation/design-file.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-palette"></span></span><span class="nav-link-text ps-1">Design file</span>
           </div>
         </a>
         <!-- parent pages--><a class="nav-link" href="${pageContext.request.contextPath}/resources/public/changelog.html" role="button">
            <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-code-branch"></span></span><span class="nav-link-text ps-1">Changelog</span>
            </div>
          </a>
        </li>
      </ul>
      <div class="settings my-3">
        <div class="card shadow-none">
          <div class="card-body alert mb-0" role="alert">
            <div class="btn-close-falcon-container">
              <button class="btn btn-link btn-close-falcon p-0" aria-label="Close" data-bs-dismiss="alert"></button>
            </div>
            <div class="text-center"><img src="${pageContext.request.contextPath}/resources/public/assets/img/icons/spot-illustrations/navbar-vertical.png" alt="" width="80" />
              <p class="fs-11 mt-2">Loving what you see? <br />Get your copy of <a href="#!">Falcon</a></p>
              <div class="d-grid"><a class="btn btn-sm btn-primary" href="https://themes.getbootstrap.com/product/falcon-admin-dashboard-webapp-template/" target="_blank">Purchase</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</nav>