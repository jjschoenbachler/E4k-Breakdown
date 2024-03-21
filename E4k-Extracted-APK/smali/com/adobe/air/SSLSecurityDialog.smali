.class public Lcom/adobe/air/SSLSecurityDialog;
.super Ljava/lang/Object;
.source "SSLSecurityDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final USER_ACTION_TRUST_ALWAYS:Ljava/lang/String; = "always"

.field private static final USER_ACTION_TRUST_NONE:Ljava/lang/String; = "none"

.field private static final USER_ACTION_TRUST_SESSION:Ljava/lang/String; = "session"


# instance fields
.field private m_condition:Ljava/util/concurrent/locks/Condition;

.field private m_lock:Ljava/util/concurrent/locks/Lock;

.field private m_useraction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/adobe/air/SSLSecurityDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/SSLSecurityDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    .line 44
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private SetUserAction(Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 191
    iput-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 193
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/SSLSecurityDialog;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/adobe/air/SSLSecurityDialog;->SetUserAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V
    .locals 9

    .line 63
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->WaitForNewActivity()Landroid/app/Activity;

    move-result-object v1

    .line 72
    :cond_0
    new-instance v0, Lcom/adobe/air/AndroidAlertDialog;

    invoke-direct {v0, v1}, Lcom/adobe/air/AndroidAlertDialog;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0}, Lcom/adobe/air/AndroidAlertDialog;->GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 80
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ssl_certificate_warning"

    .line 82
    invoke-static {v5, v4, v3}, Lcom/adobe/air/utils/Utils;->GetLayoutView(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "ServerName"

    .line 87
    invoke-static {v6, v5, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 93
    new-instance p1, Lcom/adobe/air/Certificate;

    invoke-direct {p1}, Lcom/adobe/air/Certificate;-><init>()V

    .line 94
    invoke-virtual {p1, p2}, Lcom/adobe/air/Certificate;->setCertificate([B)Ljava/lang/Boolean;

    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Lcom/adobe/air/Certificate;

    invoke-direct {p1, p3}, Lcom/adobe/air/Certificate;-><init>(Landroid/net/http/SslCertificate;)V

    :goto_0
    const-string p2, "IDA_CERTIFICATE_DETAILS"

    .line 101
    invoke-static {p2, v4}, Lcom/adobe/air/utils/Utils;->GetResourceString(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x8

    .line 103
    new-array v4, p3, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Lcom/adobe/air/Certificate;->getIssuedToCommonName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    .line 105
    invoke-virtual {p1}, Lcom/adobe/air/Certificate;->getIssuedToOrganization()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x2

    .line 106
    invoke-virtual {p1}, Lcom/adobe/air/Certificate;->getIssuedToOrganizationalUnit()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x3

    .line 107
    invoke-virtual {p1}, Lcom/adobe/air/Certificate;->getIssuedByCommonName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x4

    .line 108
    invoke-virtual {p1}, Lcom/adobe/air/Certificate;->getIssuedByOrganization()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x5

    .line 109
    invoke-virtual {p1}, Lcom/adobe/air/Certificate;->getIssuedByOrganizationalUnit()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x6

    .line 110
    invoke-virtual {p1}, Lcom/adobe/air/Certificate;->getIssuedOn()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x7

    .line 111
    invoke-virtual {p1}, Lcom/adobe/air/Certificate;->getExpiresOn()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v6

    .line 103
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CertificateDetails"

    .line 113
    invoke-static {p2, v5, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 114
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const-string p1, "NeutralButton"

    .line 116
    invoke-static {p1, v5, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 117
    new-instance p2, Lcom/adobe/air/SSLSecurityDialog$1;

    invoke-direct {p2, p0, v0}, Lcom/adobe/air/SSLSecurityDialog$1;-><init>(Lcom/adobe/air/SSLSecurityDialog;Lcom/adobe/air/AndroidAlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "PositiveButton"

    .line 125
    invoke-static {p1, v5, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p4, :cond_2

    .line 129
    new-instance p2, Lcom/adobe/air/SSLSecurityDialog$2;

    invoke-direct {p2, p0, v0}, Lcom/adobe/air/SSLSecurityDialog$2;-><init>(Lcom/adobe/air/SSLSecurityDialog;Lcom/adobe/air/AndroidAlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    const-string p1, "NegativeButton"

    .line 140
    invoke-static {p1, v5, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByNameFromPackage(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 141
    new-instance p2, Lcom/adobe/air/SSLSecurityDialog$3;

    invoke-direct {p2, p0, v0}, Lcom/adobe/air/SSLSecurityDialog$3;-><init>(Lcom/adobe/air/SSLSecurityDialog;Lcom/adobe/air/AndroidAlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 151
    new-instance p1, Lcom/adobe/air/SSLSecurityDialog$4;

    invoke-direct {p1, p0}, Lcom/adobe/air/SSLSecurityDialog$4;-><init>(Lcom/adobe/air/SSLSecurityDialog;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    new-instance p1, Lcom/adobe/air/SSLSecurityDialog$5;

    invoke-direct {p1, p0, v0}, Lcom/adobe/air/SSLSecurityDialog$5;-><init>(Lcom/adobe/air/SSLSecurityDialog;Lcom/adobe/air/AndroidAlertDialog;)V

    invoke-virtual {v1, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 178
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 183
    iget-object p2, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 184
    throw p1

    .line 183
    :catch_0
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_4
    return-void
.end method

.method public getUserAction()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    return-object v0
.end method

.method public show(Ljava/lang/String;Landroid/net/http/SslCertificate;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/adobe/air/SSLSecurityDialog;->ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V

    .line 202
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    .line 206
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    return-object p1
.end method

.method public show(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/air/SSLSecurityDialog;->ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V

    .line 53
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog;->m_useraction:Ljava/lang/String;

    return-object p1
.end method
