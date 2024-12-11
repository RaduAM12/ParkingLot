<%--
  Created by IntelliJ IDEA.
  User: Radu
  Date: 11/27/2024
  Time: 8:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="AddCar">
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">
        <h1>Add Car</h1>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="license_plate">License Plate</label>
                <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="" value="${car.licensePlate}"
                       required>
                <div class="invalid-feedback">
                    Licence Plate is required.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="parking_spot">Parking Spot</label>
                <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="" value="${car.parkingSpot}" required>
                <div class="invalid-feedback">
                    Parking Spot is required.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="parking_spot">Owner</label>
                <select type="custom-select d-block w-100"  id="owner_id" name="owner_id" required>
                    <option value="">Choose...</option>
                    <c:forEach var="user" items="${users}" varStatus="status">
                        <option value="${user.id}" ${car.ownerName eq user.username ? 'selected' : ''}>${user.username}</option>
                    </c:forEach>
                </select>

                <div class="invalid-feedback">
                    Please select an owner.
                </div>
            </div>
            <div>
                <button class="w-20 btn btn-primary btn-lg" type="submit">Save</button>
                <input type ="hidden" name="car_id" value="${car.id}"/>
            </div>
        </div>
    </form>
</t:pageTemplate>


