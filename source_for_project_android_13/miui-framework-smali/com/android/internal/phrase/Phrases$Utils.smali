.class public Lcom/android/internal/phrase/Phrases$Utils;
.super Ljava/lang/Object;
.source "Phrases.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/phrase/Phrases;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field private static blacklist EXTRA_PHRASE_LIST:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const-string v0, "phrase_list"

    sput-object v0, Lcom/android/internal/phrase/Phrases$Utils;->EXTRA_PHRASE_LIST:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static blacklist getAddPhraseIntent()Landroid/content/Intent;
    .registers 3

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/internal/phrase/Phrases;->-$$Nest$sfgetPHRASE_PACKAGE_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/phrase/Phrases;->-$$Nest$sfgetPHRASE_ADD_ACTIVITY_NAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPhraseEditIntent()Landroid/content/Intent;
    .registers 3

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/internal/phrase/Phrases;->-$$Nest$sfgetPHRASE_PACKAGE_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/phrase/Phrases;->-$$Nest$sfgetPHRASE_EDIT_ACTIVITY_NAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isAddPhraseActivity(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2b

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/phrase/Phrases;->-$$Nest$sfgetPHRASE_PACKAGE_NAME()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/phrase/Phrases;->-$$Nest$sfgetPHRASE_ADD_ACTIVITY_NAME()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 36
    :goto_2a
    return v0

    .line 39
    :cond_2b
    return v0
.end method

.method public static blacklist startAddPhraseActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phrase"    # Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/android/internal/phrase/Phrases$Utils;->getAddPhraseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 50
    sget-object v1, Lcom/android/internal/phrase/Phrases$Utils;->EXTRA_PHRASE_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_14
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
