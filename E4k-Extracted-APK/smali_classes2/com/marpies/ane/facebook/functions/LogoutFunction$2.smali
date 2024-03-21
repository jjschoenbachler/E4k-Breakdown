.class Lcom/marpies/ane/facebook/functions/LogoutFunction$2;
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

    .line 62
    iput-object p1, p0, Lcom/marpies/ane/facebook/functions/LogoutFunction$2;->this$0:Lcom/marpies/ane/facebook/functions/LogoutFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/marpies/ane/facebook/functions/LogoutFunction$2;->this$0:Lcom/marpies/ane/facebook/functions/LogoutFunction;

    invoke-static {p1}, Lcom/marpies/ane/facebook/functions/LogoutFunction;->access$000(Lcom/marpies/ane/facebook/functions/LogoutFunction;)V

    return-void
.end method
