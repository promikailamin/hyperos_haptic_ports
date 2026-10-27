.class public final Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub$SingletonHolder;
.super Ljava/lang/Object;
.source "MiuiFreeFormPcWindowMotionHelperStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;
    .registers 1

    sget-object v0, Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub$SingletonHolder;->INSTANCE:Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;

    .line 13
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;

    sput-object v0, Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub$SingletonHolder;->INSTANCE:Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
