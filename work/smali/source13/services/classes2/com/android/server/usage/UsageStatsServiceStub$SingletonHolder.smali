.class public final Lcom/android/server/usage/UsageStatsServiceStub$SingletonHolder;
.super Ljava/lang/Object;
.source "UsageStatsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/usage/UsageStatsServiceStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/usage/UsageStatsServiceStub;
    .registers 1

    sget-object v0, Lcom/android/server/usage/UsageStatsServiceStub$SingletonHolder;->INSTANCE:Lcom/android/server/usage/UsageStatsServiceStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/android/server/usage/UsageStatsServiceStub;

    .line 19
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsServiceStub;

    sput-object v0, Lcom/android/server/usage/UsageStatsServiceStub$SingletonHolder;->INSTANCE:Lcom/android/server/usage/UsageStatsServiceStub;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
