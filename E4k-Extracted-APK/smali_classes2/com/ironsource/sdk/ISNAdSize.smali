.class public Lcom/ironsource/sdk/ISNAdSize;
.super Ljava/lang/Object;
.source "ISNAdSize.java"


# instance fields
.field private mHeight:I

.field private mLabel:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mWidth:I

    .line 15
    iput v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mHeight:I

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/ironsource/sdk/ISNAdSize;->mWidth:I

    .line 21
    iput p2, p0, Lcom/ironsource/sdk/ISNAdSize;->mHeight:I

    .line 22
    iput-object p3, p0, Lcom/ironsource/sdk/ISNAdSize;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mHeight:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mWidth:I

    return v0
.end method

.method public isDrawable()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mWidth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 36
    iget v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mWidth:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ironsource/sdk/ISNAdSize;->mLabel:Ljava/lang/String;

    return-object v0
.end method
