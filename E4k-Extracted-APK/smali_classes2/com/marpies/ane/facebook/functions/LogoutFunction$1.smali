.class Lcom/marpies/ane/facebook/functions/LogoutFunction$1;
.super Ljava/lang/Object;
.source "LogoutFunction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/functions/LogoutFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marpies/ane/facebook/functions/LogoutFunction;


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/functions/LogoutFunction;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/marpies/ane/facebook/functions/LogoutFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/LogoutFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "Log out cancelled."

    .line 70
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string p1, "logoutCancel"

    .line 71
    iget-object p2, p0, Lcom/marpies/ane/facebook/functions/LogoutFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/LogoutFunction;

    iget p2, p2, Lcom/marpies/ane/facebook/functions/LogoutFunction;->mListenerID:I

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/StringUtils;->getListenerJSONString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
