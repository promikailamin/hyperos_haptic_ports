.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/display/DisplayManagerService;

    return-void
.end method


# virtual methods
.method public final get(I)Landroid/view/DisplayInfo;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->$r8$lambda$jG5q-gISxai2bT9ibL6Vsz7nei4(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method
