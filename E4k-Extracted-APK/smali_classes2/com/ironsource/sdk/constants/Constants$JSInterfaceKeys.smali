.class public Lcom/ironsource/sdk/constants/Constants$JSInterfaceKeys;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSInterfaceKeys"
.end annotation


# static fields
.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final FUNCTION_NAME:Ljava/lang/String; = "functionName"

.field public static final FUNCTION_PARAMS:Ljava/lang/String; = "functionParams"

.field public static final SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/constants/Constants;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/constants/Constants;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/ironsource/sdk/constants/Constants$JSInterfaceKeys;->this$0:Lcom/ironsource/sdk/constants/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
