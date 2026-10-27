.class public final synthetic Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget p0, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Landroid/app/IUiModeManagerCallback;

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->$r8$lambda$SJG2yE7wggEJULCwOUcYer0YM1M(ILandroid/app/IUiModeManagerCallback;)V

    return-void
.end method
