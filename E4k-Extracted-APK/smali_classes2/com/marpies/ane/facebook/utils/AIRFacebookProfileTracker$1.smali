.class final Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker$1;
.super Lcom/facebook/ProfileTracker;
.source "AIRFacebookProfileTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;->startTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/facebook/ProfileTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 0

    .line 35
    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIRFacebookProfileTracker;->access$000(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    return-void
.end method
