.class Lcom/myflashlabs/richwebview/AirCommand$2;
.super Ljava/lang/Object;
.source "AirCommand.java"

# interfaces
.implements Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabFallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/AirCommand;->openEmbeddedBrowser(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/AirCommand;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/AirCommand;)V
    .locals 0

    .line 1823
    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$2;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openUri(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    .line 1827
    sget-object p1, Lcom/myflashlabs/richwebview/ExConst;->EMBEDDED_BROWSER_FALLBACK:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
