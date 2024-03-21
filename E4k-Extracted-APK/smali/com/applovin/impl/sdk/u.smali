.class public Lcom/applovin/impl/sdk/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:D

.field private final b:D

.field private final c:J


# direct methods
.method constructor <init>(DDJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/impl/sdk/u;->a:D

    iput-wide p3, p0, Lcom/applovin/impl/sdk/u;->b:D

    iput-wide p5, p0, Lcom/applovin/impl/sdk/u;->c:J

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/u;->a:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/u;->b:D

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/u;->c:J

    return-wide v0
.end method
