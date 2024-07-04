
# API Documentation

 ## Endpoints

### POST `/products`

**Purpose:** Create a new product.

**HTTP Method:** POST

**Endpoint:** `<BASE_URL>/api/products`

**Request Parameters:**

- `name`: (required) The name of the product. Must be a string with a maximum length of 255 characters.
- `description`: (required) A textual description of the product.
- `price`: (required) The price of the product. Must be a decimal value with up to 10 digits, 2 of which can be after the decimal point.
- `stock`: (required) The stock quantity of the product. Must be an integer.

**Response:**

- **Success:** Returns a JSON object representing the newly created product.
- **Error:** Returns a JSON object with error details(with non filled field).

---

### GET `/products`

**Purpose:** Retrieve all products.

**HTTP Method:** GET

**Endpoint:** `<BASE_URL>/api/products`

**Response:**

- **Success:** Returns a JSON array of product objects.
---

### GET `/products/{id}`

**Purpose:** Retrieve a single product by ID.

**HTTP Method:** GET

**Endpoint:** `<BASE_URL>/api/products/{id}`

**Path Parameters:**

- `id`: (required) The unique identifier of the product.

**Response:**

- **Success:** Returns a JSON object representing the requested product.
- **Error:** If no object with that id.

---

### PUT `/products/{id}`

**Purpose:** Update a product by ID.

**HTTP Method:** PUT

**Endpoint:** `<BASE_URL>/api/products/{id}`

**Path Parameters:**

- `id`: (required) The unique identifier of the product to update.

**Request Body:**

- Same as POST `/products`, but only fields provided in the request body will be updated.

**Response:**

- **Success:** Returns a JSON object representing the updated product.
- **Error:** If no object with that id.

---

### DELETE `/products/{id}`

**Purpose:** Delete a product by ID.

**HTTP Method:** DELETE

**Endpoint:** `<BASE_URL>/api/products/{id}`

**Path Parameters:**

- `id`: (required) The unique identifier of the product to delete.

**Response:**

- **Success:** Returns a JSON object confirming the deletion.
- **Error:** If no object with that id.