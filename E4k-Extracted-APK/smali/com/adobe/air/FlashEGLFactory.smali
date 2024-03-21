.class public Lcom/adobe/air/FlashEGLFactory;
.super Ljava/lang/Object;
.source "FlashEGLFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/FlashEGLFactory$FlashEGLType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateFlashEGL()Lcom/adobe/air/FlashEGL;
    .locals 3

    .line 23
    sget-object v0, Lcom/adobe/air/FlashEGLFactory$FlashEGLType;->FLASHEGL10:Lcom/adobe/air/FlashEGLFactory$FlashEGLType;

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    sget-object v0, Lcom/adobe/air/FlashEGLFactory$FlashEGLType;->FLASHEGL14:Lcom/adobe/air/FlashEGLFactory$FlashEGLType;

    .line 35
    :cond_1
    invoke-static {v0}, Lcom/adobe/air/FlashEGLFactory;->CreateFlashEGL(Lcom/adobe/air/FlashEGLFactory$FlashEGLType;)Lcom/adobe/air/FlashEGL;

    move-result-object v0

    return-object v0
.end method

.method public static CreateFlashEGL(Lcom/adobe/air/FlashEGLFactory$FlashEGLType;)Lcom/adobe/air/FlashEGL;
    .locals 1

    .line 41
    sget-object v0, Lcom/adobe/air/FlashEGLFactory$1;->$SwitchMap$com$adobe$air$FlashEGLFactory$FlashEGLType:[I

    invoke-virtual {p0}, Lcom/adobe/air/FlashEGLFactory$FlashEGLType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 47
    new-instance p0, Lcom/adobe/air/FlashEGL10;

    invoke-direct {p0}, Lcom/adobe/air/FlashEGL10;-><init>()V

    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Lcom/adobe/air/FlashEGL10;

    invoke-direct {p0}, Lcom/adobe/air/FlashEGL10;-><init>()V

    :goto_0
    return-object p0
.end method
