.class public Lcom/adobe/air/AIRUpdateDialog;
.super Landroid/app/Activity;
.source "AIRUpdateDialog.java"


# static fields
.field private static AIR_PING_URL:Ljava/lang/String; = "https://airdownload2.adobe.com/air?"

.field private static sThis:Lcom/adobe/air/AIRUpdateDialog;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final RUNTIME_PACKAGE_ID:Ljava/lang/String;

.field private actWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private alertDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "AIRUpdateDialog"

    .line 99
    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    const-string v0, "com.adobe.air"

    .line 101
    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AIRUpdateDialog;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/adobe/air/AIRUpdateDialog;->actWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object p0
.end method

.method static synthetic access$100()Lcom/adobe/air/AIRUpdateDialog;
    .locals 1

    .line 11
    sget-object v0, Lcom/adobe/air/AIRUpdateDialog;->sThis:Lcom/adobe/air/AIRUpdateDialog;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/adobe/air/AIRUpdateDialog;->AIR_PING_URL:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sput-object p0, Lcom/adobe/air/AIRUpdateDialog;->sThis:Lcom/adobe/air/AIRUpdateDialog;

    const/4 p1, 0x0

    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AIRUpdateDialog;->actWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 25
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Adobe AIR"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_RUNTIME_UPDATE_MESSAGE:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v0}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 26
    iget-object p1, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_UPDATE:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v0}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/adobe/air/AIRUpdateDialog$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AIRUpdateDialog$1;-><init>(Lcom/adobe/air/AIRUpdateDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/adobe/air/AIRUpdateDialog$2;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRUpdateDialog$2;-><init>(Lcom/adobe/air/AIRUpdateDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 62
    iget-object p1, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 63
    iget-object p1, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 77
    invoke-virtual {p0}, Lcom/adobe/air/AIRUpdateDialog;->finish()V

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/adobe/air/AIRUpdateDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 93
    invoke-virtual {p0}, Lcom/adobe/air/AIRUpdateDialog;->finish()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
