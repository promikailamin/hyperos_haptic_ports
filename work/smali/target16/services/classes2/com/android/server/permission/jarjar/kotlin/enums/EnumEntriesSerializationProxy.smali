.class public final Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy;
.super Ljava/lang/Object;
.source "EnumEntriesSerializationProxy.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy$Companion;

.field private static final serialVersionUID:J


# instance fields
.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy;->Companion:Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy$Companion;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Enum;)V
    .registers 3

    const-string v0, "entries"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy;->c:Ljava/lang/Class;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 2

    .line 20
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesSerializationProxy;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getEnumConstants(...)"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Enum;

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntries;

    move-result-object p0

    return-object p0
.end method
