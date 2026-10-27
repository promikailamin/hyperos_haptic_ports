.class public final Lcom/android/server/app/PreCacheUtilStub$SingletonHolder;
.super Ljava/lang/Object;
.source "PreCacheUtilStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/PreCacheUtilStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/app/PreCacheUtilStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/app/PreCacheUtilStub;
    .registers 1

    sget-object v0, Lcom/android/server/app/PreCacheUtilStub$SingletonHolder;->INSTANCE:Lcom/android/server/app/PreCacheUtilStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/app/PreCacheUtilStub;

    .line 14
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/PreCacheUtilStub;

    sput-object v0, Lcom/android/server/app/PreCacheUtilStub$SingletonHolder;->INSTANCE:Lcom/android/server/app/PreCacheUtilStub;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
