.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lcom/android/media/permission/UidPackageState$PackageState;

    check-cast p2, Lcom/android/media/permission/UidPackageState$PackageState;

    invoke-static {p1, p2}, Lcom/android/server/audio/AudioService;->$r8$lambda$hv9i_CpNQHnauC0ANWec00CWzM4(Lcom/android/media/permission/UidPackageState$PackageState;Lcom/android/media/permission/UidPackageState$PackageState;)Lcom/android/media/permission/UidPackageState$PackageState;

    move-result-object p0

    return-object p0
.end method
