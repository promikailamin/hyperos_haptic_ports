.class Landroid/app/Instrumentation$1MenuRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuRunnable"
.end annotation


# instance fields
.field private final blacklist activity:Landroid/app/Activity;

.field private final blacklist flags:I

.field private final blacklist identifier:I

.field blacklist returnValue:Z


# direct methods
.method public constructor blacklist <init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput-object p2, p0, Landroid/app/Instrumentation$1MenuRunnable;->activity:Landroid/app/Activity;

    .line 1071
    iput p3, p0, Landroid/app/Instrumentation$1MenuRunnable;->identifier:I

    .line 1072
    iput p4, p0, Landroid/app/Instrumentation$1MenuRunnable;->flags:I

    .line 1073
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 1076
    iget-object v0, p0, Landroid/app/Instrumentation$1MenuRunnable;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1078
    iget v1, p0, Landroid/app/Instrumentation$1MenuRunnable;->identifier:I

    iget v2, p0, Landroid/app/Instrumentation$1MenuRunnable;->flags:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Window;->performPanelIdentifierAction(III)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    .line 1082
    return-void
.end method
