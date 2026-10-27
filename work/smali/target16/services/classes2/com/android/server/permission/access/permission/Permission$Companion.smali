.class public final Lcom/android/server/permission/access/permission/Permission$Companion;
.super Ljava/lang/Object;
.source "Permission.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/permission/access/permission/Permission$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final typeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_d

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    .line 182
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :cond_a
    const-string p0, "TYPE_DYNAMIC"

    return-object p0

    .line 180
    :cond_d
    const-string p0, "TYPE_MANIFEST"

    return-object p0
.end method
