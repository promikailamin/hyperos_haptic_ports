.class public abstract Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesKt;
.super Ljava/lang/Object;
.source "EnumEntries.kt"


# direct methods
.method public static final enumEntries([Ljava/lang/Enum;)Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntries;
    .registers 2

    const-string v0, "entries"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method
