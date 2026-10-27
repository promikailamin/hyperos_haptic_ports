.class public final Lcom/android/server/MiuiCommonCloudServiceStub$SingletonHolder;
.super Ljava/lang/Object;
.source "MiuiCommonCloudServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiCommonCloudServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/MiuiCommonCloudServiceStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/MiuiCommonCloudServiceStub;
    .registers 1

    sget-object v0, Lcom/android/server/MiuiCommonCloudServiceStub$SingletonHolder;->INSTANCE:Lcom/android/server/MiuiCommonCloudServiceStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/MiuiCommonCloudServiceStub;

    .line 15
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiCommonCloudServiceStub;

    sput-object v0, Lcom/android/server/MiuiCommonCloudServiceStub$SingletonHolder;->INSTANCE:Lcom/android/server/MiuiCommonCloudServiceStub;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
