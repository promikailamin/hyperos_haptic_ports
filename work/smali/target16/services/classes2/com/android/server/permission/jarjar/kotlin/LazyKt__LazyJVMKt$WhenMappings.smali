.class public abstract synthetic Lcom/android/server/permission/jarjar/kotlin/LazyKt__LazyJVMKt$WhenMappings;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->values()[Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->PUBLICATION:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->NONE:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/LazyKt__LazyJVMKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
