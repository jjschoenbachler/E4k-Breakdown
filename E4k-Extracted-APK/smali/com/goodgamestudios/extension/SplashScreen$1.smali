.class Lcom/goodgamestudios/extension/SplashScreen$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodgamestudios/extension/SplashScreen;->startAppDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodgamestudios/extension/SplashScreen;


# direct methods
.method constructor <init>(Lcom/goodgamestudios/extension/SplashScreen;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/goodgamestudios/extension/SplashScreen$1;->this$0:Lcom/goodgamestudios/extension/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "GGS SplashScreen"

    const-string v1, "delayed thread running now ..."

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/goodgamestudios/extension/SplashScreen$1;->this$0:Lcom/goodgamestudios/extension/SplashScreen;

    invoke-static {v0}, Lcom/goodgamestudios/extension/SplashScreen;->access$000(Lcom/goodgamestudios/extension/SplashScreen;)V

    return-void
.end method
