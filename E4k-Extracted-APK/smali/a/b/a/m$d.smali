.class public La/b/a/m$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/m;->b(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(La/b/a/m;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p2, p0, La/b/a/m$d;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m$d;->a:Landroid/webkit/WebView;

    const-string v1, "javascript:evalObj.evaluateIsConsentGiven(JSON.stringify(OneTrust.IsAlertBoxClosedAndValid()))"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, La/b/a/m$d;->a:Landroid/webkit/WebView;

    const-string v1, "javascript:evalObj.evaluateShowAlertNotice(JSON.stringify(OneTrust.GetDomainData().ShowAlertNotice))"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, La/b/a/m$d;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method
