.class Lcom/adobe/air/GamePreviewAppEntry$1;
.super Ljava/lang/Object;
.source "GamePreviewAppEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/GamePreviewAppEntry;->showDialog(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/GamePreviewAppEntry;


# direct methods
.method constructor <init>(Lcom/adobe/air/GamePreviewAppEntry;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/adobe/air/GamePreviewAppEntry$1;->this$0:Lcom/adobe/air/GamePreviewAppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/adobe/air/GamePreviewAppEntry$1;->this$0:Lcom/adobe/air/GamePreviewAppEntry;

    invoke-static {p1}, Lcom/adobe/air/GamePreviewAppEntry;->access$000(Lcom/adobe/air/GamePreviewAppEntry;)V

    const/4 p1, 0x0

    .line 164
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
