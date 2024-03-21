.class public final enum Lkotlin/script/experimental/api/ScriptAcceptedLocation;
.super Ljava/lang/Enum;
.source "scriptIdeConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/script/experimental/api/ScriptAcceptedLocation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ScriptAcceptedLocation;",
        "",
        "(Ljava/lang/String;I)V",
        "Sources",
        "Tests",
        "Libraries",
        "Project",
        "Everywhere",
        "kotlin-scripting-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/script/experimental/api/ScriptAcceptedLocation;

.field public static final enum Everywhere:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

.field public static final enum Libraries:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

.field public static final enum Project:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

.field public static final enum Sources:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

.field public static final enum Tests:Lkotlin/script/experimental/api/ScriptAcceptedLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    const-string v1, "Sources"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/script/experimental/api/ScriptAcceptedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Sources:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    .line 21
    new-instance v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    const-string v1, "Tests"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lkotlin/script/experimental/api/ScriptAcceptedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Tests:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    .line 22
    new-instance v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    const-string v1, "Libraries"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lkotlin/script/experimental/api/ScriptAcceptedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Libraries:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    .line 23
    new-instance v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    const-string v1, "Project"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lkotlin/script/experimental/api/ScriptAcceptedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Project:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    .line 24
    new-instance v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    const-string v1, "Everywhere"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lkotlin/script/experimental/api/ScriptAcceptedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Everywhere:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    sget-object v1, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Sources:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Tests:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    aput-object v1, v0, v3

    sget-object v1, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Libraries:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    aput-object v1, v0, v4

    sget-object v1, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Project:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    aput-object v1, v0, v5

    sget-object v1, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Everywhere:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    aput-object v1, v0, v6

    sput-object v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->$VALUES:[Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/script/experimental/api/ScriptAcceptedLocation;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 25
    check-cast p0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    return-object p0
.end method

.method public static values()[Lkotlin/script/experimental/api/ScriptAcceptedLocation;
    .locals 4

    sget-object v0, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->$VALUES:[Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
