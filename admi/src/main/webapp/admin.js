

      document.addEventListener('DOMContentLoaded', function () {
          loadCountsAndData();
      });

      function loadCountsAndData() {

          const users = [
              { id: 1, username: "aman123", email: '123@gmail.com' },
              { id: 2, username: "john_doe", email: 'john@example.com' }
          ];

          const orders = [
              { userId: 1, orderId: 1001, userName: 'saman123' },
              { userId: 2, orderId: 1002, userName: 'john_doe' }
          ];

          
          document.getElementById('userCount').textContent = 'Users: ' + users.length;
          document.getElementById('orderCount').textContent = 'Orders: ' + orders.length;


          const userTableBody = document.getElementById('userTableBody');
          users.forEach(user => {
              const row = `<tr>
                  <td>${user.id}</td>
                  <td>${user.username}</td>
                  <td>${user.email}</td>
                  <td>
                      <button class='action-btn delete-btn'>Delete</button>
                      <button class='action-btn update-btn'>Update</button>
                  </td>
              </tr>`;
              userTableBody.innerHTML += row;
          });

       
          const orderTableBody = document.getElementById('orderTableBody');
          orders.forEach(order => {
              const row = `<tr>
                  <td>${order.userId}</td>
                  <td>${order.orderId}</td>
                  <td>${order.userName}</td>
                  <td>
                      <button class='action-btn delete-btn'>Delete</button>
                      <button class='action-btn update-btn'>Update</button>
                  </td>
              </tr>`;
              orderTableBody.innerHTML += row;
          });
      }
  