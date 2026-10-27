.class public final enum Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;
.super Ljava/lang/Enum;
.source "Lazy.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

.field public static final enum NONE:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

.field public static final enum PUBLICATION:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

.field public static final enum SYNCHRONIZED:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;


# direct methods
.method public static final synthetic $values()[Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;
    .registers 3

    .line 0
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->PUBLICATION:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    sget-object v2, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->NONE:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 70
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    const-string v1, "SYNCHRONIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    .line 78
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    const-string v1, "PUBLICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->PUBLICATION:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    .line 86
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->NONE:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->$values()[Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->$VALUES:[Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->$ENTRIES:Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;
    .registers 2

    .line 0
    const-class v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    return-object p0
.end method

.method public static values()[Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->$VALUES:[Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    return-object v0
.end method
