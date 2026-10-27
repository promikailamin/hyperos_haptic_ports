.class public Lcom/android/server/alarm/AlarmManagerServiceStub$Instance;
.super Ljava/lang/Object;
.source "AlarmManagerServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# static fields
.field private static final sInstance:Lcom/android/server/alarm/AlarmManagerServiceStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/android/server/alarm/AlarmManagerServiceStub;
    .registers 1

    sget-object v0, Lcom/android/server/alarm/AlarmManagerServiceStub$Instance;->sInstance:Lcom/android/server/alarm/AlarmManagerServiceStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/alarm/AlarmManagerServiceStub;

    .line 11
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/AlarmManagerServiceStub;

    sput-object v0, Lcom/android/server/alarm/AlarmManagerServiceStub$Instance;->sInstance:Lcom/android/server/alarm/AlarmManagerServiceStub;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
