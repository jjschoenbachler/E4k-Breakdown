.class public Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;
.super Lcom/adobe/fre/FREContext;
.source "TextInputContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CancelListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$updateTitle;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$setCancelable;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$isShowing;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$dismiss;,
        Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$shake;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "TextInputDialogContext"


# instance fields
.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)Landroid/app/AlertDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 36
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static getInputType(Lcom/adobe/fre/FREObject;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation

    const-string v0, "none"

    const-string v1, "softKeyboardType"

    .line 357
    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    const-string v1, "softKeyboardType"

    .line 358
    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "autoCapitalize"

    .line 359
    invoke-virtual {p0, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "autoCapitalize"

    .line 360
    invoke-virtual {p0, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "displayAsPassword"

    .line 361
    invoke-virtual {p0, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v3, "displayAsPassword"

    .line 362
    invoke-virtual {p0, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v5, "autoCorrect"

    .line 363
    invoke-virtual {p0, v5}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v4, "autoCorrect"

    .line 364
    invoke-virtual {p0, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v4

    :cond_2
    const-string p0, "url"

    .line 366
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v5, 0xa0

    if-eqz p0, :cond_6

    if-eqz v4, :cond_3

    const p0, 0x80a0

    const v2, 0x80a0

    goto :goto_1

    :cond_3
    const/16 v2, 0xa0

    :goto_1
    const-string p0, "word"

    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    or-int/lit16 v2, v2, 0x2000

    goto/16 :goto_2

    :cond_4
    const-string p0, "sentence"

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    or-int/lit16 v2, v2, 0x4000

    goto/16 :goto_2

    :cond_5
    const-string p0, "all"

    .line 377
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    or-int/lit16 v2, v2, 0x1000

    goto/16 :goto_2

    :cond_6
    const-string p0, "number"

    .line 380
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 v2, 0x2

    if-eqz v3, :cond_12

    const/16 v2, 0x12

    goto/16 :goto_2

    :cond_7
    const-string p0, "contact"

    .line 384
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v2, 0x3

    if-eqz v3, :cond_12

    const/16 v2, 0x13

    goto :goto_2

    :cond_8
    const-string p0, "email"

    .line 389
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const v1, 0x8000

    if-eqz p0, :cond_d

    const/16 p0, 0x20

    if-eqz v3, :cond_9

    const/16 p0, 0xa0

    :cond_9
    if-eqz v4, :cond_a

    or-int/2addr p0, v1

    :cond_a
    move v2, p0

    const-string p0, "word"

    .line 396
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    or-int/lit16 v2, v2, 0x2000

    goto :goto_2

    :cond_b
    const-string p0, "sentence"

    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    or-int/lit16 v2, v2, 0x4000

    goto :goto_2

    :cond_c
    const-string p0, "all"

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    or-int/lit16 v2, v2, 0x1000

    goto :goto_2

    :cond_d
    if-eqz v3, :cond_e

    const/16 v2, 0x81

    :cond_e
    if-eqz v4, :cond_f

    or-int p0, v2, v1

    move v2, p0

    :cond_f
    const-string p0, "word"

    .line 410
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    or-int/lit16 v2, v2, 0x2000

    goto :goto_2

    :cond_10
    const-string p0, "sentence"

    .line 412
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    or-int/lit16 v2, v2, 0x4000

    goto :goto_2

    :cond_11
    const-string p0, "all"

    .line 414
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    or-int/lit16 v2, v2, 0x1000

    :cond_12
    :goto_2
    return v2
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "TextInputDialogContext"

    const-string v1, "Disposing Extension Context"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->dialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    const-string v0, "TextInputDialogContext"

    const-string v1, "Registering Extension Functions"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "show"

    .line 58
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismiss"

    .line 59
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$dismiss;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$dismiss;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isShowing"

    .line 60
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$isShowing;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$isShowing;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setCancelable"

    .line 61
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$setCancelable;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$setCancelable;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateTitle"

    .line 62
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$updateTitle;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$updateTitle;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shake"

    .line 63
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$shake;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$shake;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
