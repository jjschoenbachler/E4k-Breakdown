.class public Lcom/adobe/air/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private m_certificate:Landroid/net/http/SslCertificate;

.field private m_factory:Ljava/security/cert/CertificateFactory;

.field private m_issuedBy:Landroid/net/http/SslCertificate$DName;

.field private m_issuedTo:Landroid/net/http/SslCertificate$DName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AIRCertificateWarningDialog"

    .line 86
    iput-object v0, p0, Lcom/adobe/air/Certificate;->TAG:Ljava/lang/String;

    :try_start_0
    const-string v0, "X.509"

    .line 13
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/Certificate;->m_factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Landroid/net/http/SslCertificate;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AIRCertificateWarningDialog"

    .line 86
    iput-object v0, p0, Lcom/adobe/air/Certificate;->TAG:Ljava/lang/String;

    .line 22
    :try_start_0
    iput-object p1, p0, Lcom/adobe/air/Certificate;->m_certificate:Landroid/net/http/SslCertificate;

    .line 23
    iget-object p1, p0, Lcom/adobe/air/Certificate;->m_certificate:Landroid/net/http/SslCertificate;

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/Certificate;->m_issuedBy:Landroid/net/http/SslCertificate$DName;

    .line 24
    iget-object p1, p0, Lcom/adobe/air/Certificate;->m_certificate:Landroid/net/http/SslCertificate;

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/Certificate;->m_issuedTo:Landroid/net/http/SslCertificate$DName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getExpiresOn()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/adobe/air/Certificate;->m_certificate:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedByCommonName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/adobe/air/Certificate;->m_issuedBy:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedByOrganization()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/adobe/air/Certificate;->m_issuedBy:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedByOrganizationalUnit()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/adobe/air/Certificate;->m_issuedBy:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedOn()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/adobe/air/Certificate;->m_certificate:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedToCommonName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/adobe/air/Certificate;->m_issuedTo:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedToOrganization()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/adobe/air/Certificate;->m_issuedTo:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedToOrganizationalUnit()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/adobe/air/Certificate;->m_issuedTo:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCertificate([B)Ljava/lang/Boolean;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/adobe/air/Certificate;->m_factory:Ljava/security/cert/CertificateFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 38
    iget-object p1, p0, Lcom/adobe/air/Certificate;->m_factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 39
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v0, p0, Lcom/adobe/air/Certificate;->m_certificate:Landroid/net/http/SslCertificate;

    .line 40
    iget-object p1, p0, Lcom/adobe/air/Certificate;->m_certificate:Landroid/net/http/SslCertificate;

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/Certificate;->m_issuedBy:Landroid/net/http/SslCertificate$DName;

    .line 41
    iget-object p1, p0, Lcom/adobe/air/Certificate;->m_certificate:Landroid/net/http/SslCertificate;

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/Certificate;->m_issuedTo:Landroid/net/http/SslCertificate$DName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 44
    :catch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
