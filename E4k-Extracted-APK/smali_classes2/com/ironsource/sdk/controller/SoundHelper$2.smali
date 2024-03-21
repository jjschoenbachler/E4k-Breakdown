.class final Lcom/ironsource/sdk/controller/SoundHelper$2;
.super Ljava/lang/Object;
.source "SoundHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/SoundHelper;->requestAudioFocus(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$audioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ironsource/sdk/controller/SoundHelper$2;->val$audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ironsource/sdk/controller/SoundHelper$2;->val$audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/SoundHelper;->access$100(Landroid/media/AudioManager;)V

    return-void
.end method
