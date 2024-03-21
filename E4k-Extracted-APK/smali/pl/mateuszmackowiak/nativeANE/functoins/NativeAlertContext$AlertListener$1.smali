.class Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;
.super Ljava/lang/Object;
.source "NativeAlertContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;


# direct methods
.method constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 146
    :try_start_0
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    iget-object v0, v0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "nativeDialog_closed"

    iget-object v2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    iget-object v2, v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    iget-object v0, v0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->dialogAlert:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NativeAlertContext"

    const-string v2, "onClick crash "

    .line 155
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "NativeAlertContext"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "NativeAlertContext"

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 158
    :goto_0
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    const/4 v1, 0x0

    iput-object v1, v0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->freContext:Lcom/adobe/fre/FREContext;

    .line 159
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    iput-object v1, v0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->dialogAlert:Landroid/content/DialogInterface;

    .line 160
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener$1;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;

    iput-object v1, v0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$AlertListener;->value:Ljava/lang/String;

    return-void
.end method
