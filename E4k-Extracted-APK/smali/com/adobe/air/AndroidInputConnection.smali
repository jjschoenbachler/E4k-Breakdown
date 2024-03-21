.class public Lcom/adobe/air/AndroidInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "AndroidInputConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidInputConnection"


# instance fields
.field private mComposedText:Ljava/lang/CharSequence;

.field private mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

.field private mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field private final mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 50
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    .line 51
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 52
    iput-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    return-void
.end method

.method private native nativeGetTextAfterCursor(I)Ljava/lang/String;
.end method

.method private native nativeGetTextBeforeCursor(I)Ljava/lang/String;
.end method

.method private native nativeGetTextBoxMaxChars()I
.end method

.method private native nativeSetSelection(II)V
.end method

.method private writeText(Ljava/lang/CharSequence;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 294
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 298
    iget-object v3, v0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 300
    iget-object v3, v0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 301
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 305
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, v0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_2

    const-string v6, "AndroidInputConnection"

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JP] writeText "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v8, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v9, 0x0

    const/16 v10, 0x43

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 317
    iget-object v15, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/16 v16, 0x1

    const/16 v17, 0x43

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v15 .. v21}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v4, v2, :cond_3

    const-string v3, "AndroidInputConnection"

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[JP] writeText 2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v6, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 328
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 326
    invoke-virtual/range {v6 .. v12}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 331
    iget-object v13, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 333
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 331
    invoke-virtual/range {v13 .. v19}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 337
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    return-void
.end method


# virtual methods
.method public Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    .line 387
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 388
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    const-string p2, "AndroidInputConnection"

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JP] setComposingText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidInputConnection;->writeText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const-string v4, "AndroidInputConnection"

    const-string v5, "[JP] deleteSurroundingText "

    .line 61
    invoke-static {v4, v5}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v6, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v7, 0x0

    const/16 v8, 0x16

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 63
    iget-object v13, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v14, 0x1

    const/16 v15, 0x16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int v1, v1, p1

    :goto_1
    if-ge v2, v1, :cond_1

    const-string v3, "AndroidInputConnection"

    const-string v4, "[JP] deleteSurroundingText 2 "

    .line 69
    invoke-static {v3, v4}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v5, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v6, 0x0

    const/16 v7, 0x43

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 71
    iget-object v12, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v13, 0x1

    const/16 v14, 0x43

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public finishComposingText()Z
    .locals 1

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    .line 269
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->IsSurfaceChangedForSoftKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setInputConnection(Lcom/adobe/air/AndroidInputConnection;)V

    .line 95
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 98
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 101
    iput p2, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 102
    iput-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 103
    iput-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 107
    iget-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidInputConnection;->nativeGetTextAfterCursor(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidInputConnection;->nativeGetTextBeforeCursor(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 151
    :pswitch_5
    iget-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 141
    :pswitch_6
    iget-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 175
    :goto_0
    :pswitch_7
    iget-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->onTextBoxContextMenuItem(I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(Z)V

    .line 126
    iget-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 4

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v3, p2

    move p2, p1

    move p1, v3

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 188
    iget-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt p1, v1, :cond_1

    if-ltz p2, :cond_1

    .line 189
    iget-object v0, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, p2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 194
    :cond_1
    iget-object p1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x20

    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 196
    iput-object p1, p0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    :goto_1
    return v2
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/adobe/air/AndroidInputConnection;->nativeGetTextBoxMaxChars()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 207
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 209
    iget-object v4, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v4}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    .line 210
    iget-object v5, v4, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v2, v5

    iget v4, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v2, v4

    .line 212
    iget-object v4, v0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, v0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v4, v2

    .line 214
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v4, p1

    .line 216
    invoke-interface {v4, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v4, p1

    move-object v2, v4

    :goto_1
    const/4 v4, 0x1

    if-eqz v2, :cond_4

    const-string v5, "AndroidInputConnection"

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[JP] setComposingText "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {v0, v2}, Lcom/adobe/air/AndroidInputConnection;->writeText(Ljava/lang/CharSequence;)V

    .line 225
    iput-object v2, v0, Lcom/adobe/air/AndroidInputConnection;->mComposedText:Ljava/lang/CharSequence;

    if-gtz v1, :cond_3

    .line 230
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v5, v1

    :goto_2
    if-ge v3, v5, :cond_4

    const-string v1, "AndroidInputConnection"

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[JP] setComposingText "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v7, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v8, 0x0

    const/16 v9, 0x15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 235
    iget-object v14, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v15, 0x1

    const/16 v16, 0x15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-le v1, v4, :cond_4

    sub-int/2addr v1, v4

    :goto_3
    if-ge v3, v1, :cond_4

    const-string v5, "AndroidInputConnection"

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[JP] setComposingText 2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v7, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v8, 0x0

    const/16 v9, 0x16

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    .line 246
    iget-object v14, v0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v15, 0x1

    const/16 v16, 0x16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return v4
.end method

.method public setSelection(II)Z
    .locals 0

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidInputConnection;->nativeSetSelection(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateIMEText()V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 346
    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    iget-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 350
    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v3, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget-object v4, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v4, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-ne v3, v4, :cond_1

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v4, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v4, v4, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-ne v3, v4, :cond_1

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    iget-object v4, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v4, v4, Landroid/view/inputmethod/ExtractedText;->flags:I

    if-eq v3, v4, :cond_3

    :cond_1
    const/4 v3, 0x0

    .line 357
    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    if-eqz v2, :cond_2

    .line 365
    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 366
    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const-string v2, ""

    .line 367
    iput-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 369
    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 370
    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 371
    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 375
    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 376
    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 377
    iput-object v1, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 379
    :goto_0
    iget-object v2, p0, Lcom/adobe/air/AndroidInputConnection;->mWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    iget-object v3, p0, Lcom/adobe/air/AndroidInputConnection;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    iget v3, v3, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_3
    return-void
.end method
