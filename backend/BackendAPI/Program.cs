var builder = WebApplication.CreateBuilder(args);

// Сервисы
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddCors(options =>
{
    options.AddPolicy("StorePolicy", policy =>
    {
        policy.AllowAnyOrigin()
              .AllowAnyHeader()
              .AllowAnyMethod();
    });
});

var app = builder.Build();

// Конфигурация middleware
app.UseCors("StorePolicy");
app.UseHttpsRedirection();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

// Эндпоинты API
app.MapGet("/products", () =>
{
    var products = new[]
    {
        new Product(
            Id: 1,
            Name: "Ноутбук ASUS ROG Strix G15",
            Category: "Laptops",
            Price: 1499.99m,
            Description: "Игровой ноутбук с процессором AMD Ryzen 9",
            ImageUrl: "https://i.postimg.cc/rFGtsXDD/iphone.jpg",
            Stock: 10
        ),
        new Product(
            Id: 2,
            Name: "Смартфон Samsung Galaxy S23 Ultra",
            Category: "Smartphones",
            Price: 1199.99m,
            Description: "Флагманский смартфон с камерой 200 МП",
            ImageUrl: "https://i.postimg.cc/rFGtsXDD/iphone.jpg",
            Stock: 25
        ),
        new Product(
            Id: 3,
            Name: "Наушники Sony WH-1000XM5",
            Category: "Headphones",
            Price: 349.99m,
            Description: "Беспроводные наушники с шумоподавлением",
            ImageUrl: "https://i.postimg.cc/rFGtsXDD/iphone.jpg",
            Stock: 15
        )
    };

    return Results.Ok(products);
})
.WithName("GetProducts")
.WithOpenApi();

app.Run();

// Модель данных
public record Product(
    int Id,
    string Name,
    string Category,
    decimal Price,
    string Description,
    string ImageUrl,
    int Stock
);