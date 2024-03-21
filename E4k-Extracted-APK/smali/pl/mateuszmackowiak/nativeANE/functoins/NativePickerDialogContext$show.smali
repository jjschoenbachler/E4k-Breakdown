.class public Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;
.super Ljava/lang/Object;
.source "NativePickerDialogContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "show"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "show"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    const/4 v13, 0x0

    .line 182
    :try_start_0
    aget-object v2, p2, v13

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    .line 183
    aget-object v2, p2, v14

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x2

    .line 184
    aget-object v2, p2, v15

    check-cast v2, Lcom/adobe/fre/FREArray;

    invoke-static {v2}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToStringArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x3

    .line 185
    aget-object v2, p2, v2

    move-object v8, v2

    check-cast v8, Lcom/adobe/fre/FREArray;

    const/4 v2, 0x4

    .line 186
    aget-object v2, p2, v2

    check-cast v2, Lcom/adobe/fre/FREArray;

    invoke-static {v2}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToIntArray(Lcom/adobe/fre/FREArray;)[I

    move-result-object v9

    const/4 v2, 0x5

    .line 187
    aget-object v2, p2, v2

    check-cast v2, Lcom/adobe/fre/FREArray;

    invoke-static {v2}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToDoubleArray(Lcom/adobe/fre/FREArray;)[D

    move-result-object v10

    const/4 v2, 0x6

    .line 188
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v5

    const/4 v2, 0x7

    .line 189
    aget-object v0, p2, v2

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v0

    .line 193
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    new-instance v16, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;

    iget-object v3, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v2, v16

    move-object/from16 v4, p1

    move v15, v5

    move-object/from16 v5, v17

    move-object v13, v11

    move v11, v0

    invoke-direct/range {v2 .. v11}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/fre/FREArray;[I[DI)V

    goto :goto_0

    :cond_0
    move v15, v5

    move-object v13, v11

    new-instance v16, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;

    iget-object v3, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v2, v16

    move-object/from16 v4, p1

    move v11, v0

    invoke-direct/range {v2 .. v11}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/fre/FREArray;[I[DI)V

    :goto_0
    move-object/from16 v0, v16

    .line 197
    invoke-virtual {v0, v15}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-ne v15, v14, :cond_1

    .line 199
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$CancelListener;

    invoke-direct {v2, v12}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$CancelListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {v0, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-eqz v13, :cond_3

    .line 201
    array-length v2, v13

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 202
    aget-object v3, v13, v2

    new-instance v4, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;

    iget-object v5, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-direct {v4, v5, v12, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {v0, v3, v4}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    array-length v2, v13

    if-le v2, v14, :cond_2

    .line 204
    aget-object v2, v13, v14

    new-instance v3, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;

    iget-object v4, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-direct {v3, v4, v12, v14}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {v0, v2, v3}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    :cond_2
    array-length v2, v13

    const/4 v3, 0x2

    if-le v2, v3, :cond_4

    .line 206
    aget-object v2, v13, v3

    new-instance v4, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;

    iget-object v5, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-direct {v4, v5, v12, v3}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {v0, v2, v4}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    const-string v2, "OK"

    .line 208
    new-instance v3, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;

    iget-object v4, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v12, v5}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {v0, v2, v3}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    :cond_4
    :goto_1
    iget-object v2, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-static {v2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 211
    iget-object v2, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-static {v2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 213
    :cond_5
    iget-object v2, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-virtual {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$PickerDialog;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v2, v0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->access$002(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    const-string v0, "nativeDialog_opened"

    const-string v2, "-1"

    .line 214
    invoke-virtual {v12, v0, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, v1, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "nativeDialog_opened"

    const-string v2, "-1"

    .line 217
    invoke-virtual {v12, v0, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "error"

    .line 220
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
