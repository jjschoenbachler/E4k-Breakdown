.class public Lcom/adobe/air/telephony/AndroidTelephonyManager;
.super Ljava/lang/Object;
.source "AndroidTelephonyManager.java"


# static fields
.field private static sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListening:Z

.field private mPhoneStateListener:Lcom/adobe/air/telephony/AndroidPhoneStateListener;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mPhoneStateListener:Lcom/adobe/air/telephony/AndroidPhoneStateListener;

    .line 33
    iput-object v0, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mListening:Z

    .line 50
    iput-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mContext:Landroid/content/Context;

    .line 51
    iget-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method public static CreateAndroidTelephonyManager(Landroid/content/Context;)Lcom/adobe/air/telephony/AndroidTelephonyManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/adobe/air/telephony/AndroidTelephonyManager;

    invoke-direct {v0, p0}, Lcom/adobe/air/telephony/AndroidTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    .line 40
    :cond_0
    sget-object p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    return-object p0
.end method

.method public static GetAndroidTelephonyManager()Lcom/adobe/air/telephony/AndroidTelephonyManager;
    .locals 1

    .line 45
    sget-object v0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    return-object v0
.end method


# virtual methods
.method public listen(Z)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mListening:Z

    if-nez v0, :cond_2

    .line 65
    iget-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mPhoneStateListener:Lcom/adobe/air/telephony/AndroidPhoneStateListener;

    if-nez p1, :cond_1

    .line 67
    new-instance p1, Lcom/adobe/air/telephony/AndroidPhoneStateListener;

    invoke-direct {p1}, Lcom/adobe/air/telephony/AndroidPhoneStateListener;-><init>()V

    iput-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mPhoneStateListener:Lcom/adobe/air/telephony/AndroidPhoneStateListener;

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mPhoneStateListener:Lcom/adobe/air/telephony/AndroidPhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mListening:Z

    .line 74
    iget-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mPhoneStateListener:Lcom/adobe/air/telephony/AndroidPhoneStateListener;

    iget-object v0, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/adobe/air/telephony/AndroidPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 77
    iget-boolean p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mListening:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mPhoneStateListener:Lcom/adobe/air/telephony/AndroidPhoneStateListener;

    if-eqz p1, :cond_3

    .line 79
    iget-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mPhoneStateListener:Lcom/adobe/air/telephony/AndroidPhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mPhoneStateListener:Lcom/adobe/air/telephony/AndroidPhoneStateListener;

    .line 81
    iput-boolean v1, p0, Lcom/adobe/air/telephony/AndroidTelephonyManager;->mListening:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
