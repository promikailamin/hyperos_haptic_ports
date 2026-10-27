.class public Lcom/android/server/recoverysystem/RecoverySystemServiceStub;
.super Ljava/lang/Object;
.source "RecoverySystemServiceStub.java"


# static fields
.field private static final INSTANCE:Lcom/android/server/recoverysystem/RecoverySystemServiceStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/recoverysystem/RecoverySystemServiceStub;

    .line 9
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/recoverysystem/RecoverySystemServiceStub;

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemServiceStub;->INSTANCE:Lcom/android/server/recoverysystem/RecoverySystemServiceStub;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/recoverysystem/RecoverySystemServiceStub;
    .registers 1

    .line 12
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemServiceStub;->INSTANCE:Lcom/android/server/recoverysystem/RecoverySystemServiceStub;

    return-object v0
.end method


# virtual methods
.method public doWipeRescuePartition()V
    .registers 1

    .line 16
    return-void
.end method
