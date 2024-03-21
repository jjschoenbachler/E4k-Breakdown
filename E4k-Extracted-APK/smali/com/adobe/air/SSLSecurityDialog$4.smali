.class Lcom/adobe/air/SSLSecurityDialog$4;
.super Ljava/lang/Object;
.source "SSLSecurityDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/SSLSecurityDialog;->ShowSSLDialog(Ljava/lang/String;[BLandroid/net/http/SslCertificate;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/SSLSecurityDialog;


# direct methods
.method constructor <init>(Lcom/adobe/air/SSLSecurityDialog;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/adobe/air/SSLSecurityDialog$4;->this$0:Lcom/adobe/air/SSLSecurityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 155
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 157
    iget-object p1, p0, Lcom/adobe/air/SSLSecurityDialog$4;->this$0:Lcom/adobe/air/SSLSecurityDialog;

    const-string p2, "none"

    invoke-static {p1, p2}, Lcom/adobe/air/SSLSecurityDialog;->access$000(Lcom/adobe/air/SSLSecurityDialog;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
