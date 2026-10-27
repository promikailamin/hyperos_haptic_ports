.class Landroid/widget/TranslationManager$TranslationConnection;
.super Ljava/lang/Object;
.source "TranslationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TranslationManager;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TranslationManager;)V
    .registers 2

    .line 206
    iput-object p1, p0, Landroid/widget/TranslationManager$TranslationConnection;->this$0:Landroid/widget/TranslationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslationConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TranslationManager$TranslationConnection;-><init>(Landroid/widget/TranslationManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 210
    const-string v0, "TranslationManager"

    const-string v1, "service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Landroid/widget/TranslationManager$TranslationConnection;->this$0:Landroid/widget/TranslationManager;

    invoke-static {p2}, Lcom/miui/translationservice/ITranslation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslation;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/TranslationManager;->-$$Nest$monInitialized(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)V

    .line 212
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 216
    const-string v0, "TranslationManager"

    const-string v1, "service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Landroid/widget/TranslationManager$TranslationConnection;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v0}, Landroid/widget/TranslationManager;->-$$Nest$monDisconnected(Landroid/widget/TranslationManager;)V

    .line 218
    return-void
.end method
