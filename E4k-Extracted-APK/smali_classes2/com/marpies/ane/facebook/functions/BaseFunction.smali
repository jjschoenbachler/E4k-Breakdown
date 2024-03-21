.class public Lcom/marpies/ane/facebook/functions/BaseFunction;
.super Ljava/lang/Object;
.source "BaseFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field protected mListenerID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/marpies/ane/facebook/functions/BaseFunction;->mListenerID:I

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 0

    .line 31
    check-cast p1, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->setContext(Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;)V

    const/4 p1, 0x0

    return-object p1
.end method
