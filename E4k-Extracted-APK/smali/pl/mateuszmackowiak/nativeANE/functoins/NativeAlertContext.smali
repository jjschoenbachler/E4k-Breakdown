.class public Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;
.super Lcom/adobe/fre/FREContext;
.source "NativeAlertContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$updateTitle;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$updateMessage;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$isShowing;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$dismiss;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$shake;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;,
        Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$CancelListener;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "NativeAlertContext"


# instance fields
.field private alert:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->alert:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)Landroid/app/AlertDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->alert:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 30
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->alert:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;ZI)Landroid/app/AlertDialog;
    .locals 0

    .line 30
    invoke-static/range {p0 .. p5}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->createAlert(Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;ZI)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createAlert(Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;ZI)Landroid/app/AlertDialog;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    new-instance p5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object p5, v0

    .line 41
    :goto_0
    invoke-virtual {p5, p4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 43
    new-instance p4, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$CancelListener;

    invoke-direct {p4, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$CancelListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p5, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    :cond_1
    array-length p4, p3

    const/4 v1, 0x2

    if-gt p4, v1, :cond_5

    if-eqz p2, :cond_2

    const-string p4, ""

    .line 46
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 47
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-eqz p1, :cond_3

    const-string p2, ""

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 49
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    :cond_3
    array-length p1, p3

    const/4 p2, 0x0

    if-ne p1, v0, :cond_4

    .line 51
    aget-object p1, p3, p2

    new-instance p2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    invoke-direct {p2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p5, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 52
    :cond_4
    array-length p1, p3

    if-ne p1, v1, :cond_9

    .line 53
    aget-object p1, p3, p2

    new-instance p2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    invoke-direct {p2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p5, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    aget-object p2, p3, v0

    new-instance p3, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    invoke-direct {p3, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;-><init>(Lcom/adobe/fre/FREContext;)V

    .line 54
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    const-string p4, ""

    .line 57
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    if-eqz p1, :cond_6

    const-string p4, ""

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 58
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    const-string p4, ""

    .line 59
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 60
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    const-string p2, ""

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 62
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    :cond_8
    :goto_1
    new-instance p1, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    invoke-direct {p1, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p5, p3, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    :cond_9
    :goto_2
    invoke-virtual {p5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "NativeAlertContext"

    const-string v1, "Disposing Extension Context"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->alert:Landroid/app/AlertDialog;

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

    const-string v0, "NativeAlertContext"

    const-string v1, "Registering Extension Functions"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "showAlertWithTitleAndMessage"

    .line 86
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dismiss"

    .line 87
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$dismiss;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$dismiss;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isShowing"

    .line 88
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$isShowing;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$isShowing;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateMessage"

    .line 89
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$updateMessage;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$updateMessage;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateTitle"

    .line 90
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$updateTitle;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$updateTitle;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shake"

    .line 91
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$shake;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$shake;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
