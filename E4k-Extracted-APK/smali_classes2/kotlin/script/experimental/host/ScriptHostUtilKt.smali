.class public final Lkotlin/script/experimental/host/ScriptHostUtilKt;
.super Ljava/lang/Object;
.source "scriptHostUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nscriptHostUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 scriptHostUtil.kt\nkotlin/script/experimental/host/ScriptHostUtilKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,122:1\n939#2:123\n1010#2,3:124\n*E\n*S KotlinDebug\n*F\n+ 1 scriptHostUtil.kt\nkotlin/script/experimental/host/ScriptHostUtilKt\n*L\n34#1:123\n34#1,3:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u001a\n\u0010\n\u001a\u00020\u0007*\u00020\u000b\u001a\u0016\u0010\n\u001a\u00020\u0007*\u00020\u00012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0001\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\r"
    }
    d2 = {
        "textSafe",
        "",
        "Lkotlin/script/experimental/api/ExternalSourceCode;",
        "getTextSafe",
        "(Lkotlin/script/experimental/api/ExternalSourceCode;)Ljava/lang/String;",
        "getMergedScriptText",
        "script",
        "Lkotlin/script/experimental/api/SourceCode;",
        "configuration",
        "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
        "toScriptSource",
        "Ljava/io/File;",
        "name",
        "kotlin-scripting-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$getTextSafe(Lkotlin/script/experimental/api/ExternalSourceCode;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/script/experimental/host/ScriptHostUtilKt;->getTextSafe(Lkotlin/script/experimental/api/ExternalSourceCode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getMergedScriptText(Lkotlin/script/experimental/api/SourceCode;Lkotlin/script/experimental/api/ScriptCompilationConfiguration;)Ljava/lang/String;
    .locals 9
    .param p0    # Lkotlin/script/experimental/api/SourceCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/script/experimental/api/ScriptCompilationConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "script"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lkotlin/script/experimental/api/SourceCode;->getText()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lkotlin/script/experimental/api/ScriptCompilationConfiguration;->Companion:Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Companion;

    check-cast v1, Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;

    invoke-static {v1}, Lkotlin/script/experimental/api/ScriptCompilationKt;->getSourceFragments(Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/script/experimental/api/ScriptCompilationConfiguration;->get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_b

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    .line 20
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/script/experimental/api/ScriptSourceNamedFragment;

    .line 23
    invoke-virtual {v2}, Lkotlin/script/experimental/api/ScriptSourceNamedFragment;->getRange()Lkotlin/script/experimental/api/SourceCode$Range;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/script/experimental/api/SourceCode$Range;->getStart()Lkotlin/script/experimental/api/SourceCode$Position;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/script/experimental/api/SourceCode$Position;->getAbsolutePos()Ljava/lang/Integer;

    move-result-object v3

    .line 24
    invoke-virtual {v2}, Lkotlin/script/experimental/api/ScriptSourceNamedFragment;->getRange()Lkotlin/script/experimental/api/SourceCode$Range;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/script/experimental/api/SourceCode$Range;->getEnd()Lkotlin/script/experimental/api/SourceCode$Position;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/script/experimental/api/SourceCode$Position;->getAbsolutePos()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    const/4 v5, 0x0

    if-nez v0, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {v0}, Lkotlin/script/experimental/api/ScriptSourceNamedFragment;->getRange()Lkotlin/script/experimental/api/SourceCode$Range;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/script/experimental/api/SourceCode$Range;->getEnd()Lkotlin/script/experimental/api/SourceCode$Position;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/script/experimental/api/SourceCode$Position;->getAbsolutePos()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_2
    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {v0}, Lkotlin/script/experimental/api/ScriptSourceNamedFragment;->getRange()Lkotlin/script/experimental/api/SourceCode$Range;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/script/experimental/api/SourceCode$Range;->getEnd()Lkotlin/script/experimental/api/SourceCode$Position;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/script/experimental/api/SourceCode$Position;->getAbsolutePos()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsorted or overlapping fragments: previous: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", current: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_4
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v6, v0, :cond_8

    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 31
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 123
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 124
    :goto_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v5, v7, :cond_7

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_6

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5

    goto :goto_5

    :cond_5
    const/16 v7, 0x20

    .line 34
    :cond_6
    :goto_5
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 126
    :cond_7
    check-cast v6, Ljava/util/List;

    .line 30
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object v0, v2

    goto/16 :goto_1

    .line 26
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Script fragments require absolute positions (received: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "{\n        val sb = StringBuilder(originalScriptText.length)\n        var prevFragment: ScriptSourceNamedFragment? = null\n        for (fragment in sourceFragments) {\n            val fragmentStartPos = fragment.range.start.absolutePos\n            val fragmentEndPos = fragment.range.end.absolutePos\n            if (fragmentStartPos == null || fragmentEndPos == null)\n                throw RuntimeException(\"Script fragments require absolute positions (received: $fragment)\")\n            val curPos = if (prevFragment == null) 0 else prevFragment.range.end.absolutePos!!\n            if (prevFragment != null && prevFragment.range.end.absolutePos!! > fragmentStartPos) throw RuntimeException(\"Unsorted or overlapping fragments: previous: $prevFragment, current: $fragment\")\n            if (curPos < fragmentStartPos) {\n                sb.append(\n                    originalScriptText.subSequence(\n                        curPos,\n                        fragmentStartPos\n                    ).map { if (it == \'\\r\' || it == \'\\n\') it else \' \' }) // preserving lines layout\n            }\n            sb.append(originalScriptText.subSequence(fragmentStartPos, fragmentEndPos))\n            prevFragment = fragment\n        }\n        sb.toString()\n    }"

    .line 36
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    :goto_6
    return-object p0
.end method

.method private static final getTextSafe(Lkotlin/script/experimental/api/ExternalSourceCode;)Ljava/lang/String;
    .locals 0

    .line 119
    :try_start_0
    invoke-interface {p0}, Lkotlin/script/experimental/api/ExternalSourceCode;->getText()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 121
    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static final toScriptSource(Ljava/io/File;)Lkotlin/script/experimental/api/SourceCode;
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lkotlin/script/experimental/host/FileScriptSource;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lkotlin/script/experimental/host/FileScriptSource;-><init>(Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlin/script/experimental/api/SourceCode;

    return-object v0
.end method

.method public static final toScriptSource(Ljava/lang/String;Ljava/lang/String;)Lkotlin/script/experimental/api/SourceCode;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lkotlin/script/experimental/host/StringScriptSource;

    invoke-direct {v0, p0, p1}, Lkotlin/script/experimental/host/StringScriptSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lkotlin/script/experimental/api/SourceCode;

    return-object v0
.end method

.method public static synthetic toScriptSource$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/script/experimental/api/SourceCode;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 114
    :cond_0
    invoke-static {p0, p1}, Lkotlin/script/experimental/host/ScriptHostUtilKt;->toScriptSource(Ljava/lang/String;Ljava/lang/String;)Lkotlin/script/experimental/api/SourceCode;

    move-result-object p0

    return-object p0
.end method
