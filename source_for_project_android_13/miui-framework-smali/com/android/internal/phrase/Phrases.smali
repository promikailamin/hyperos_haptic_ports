.class public Lcom/android/internal/phrase/Phrases;
.super Ljava/lang/Object;
.source "Phrases.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/phrase/Phrases$Utils;
    }
.end annotation


# static fields
.field public static final blacklist AUTHORITY:Ljava/lang/String; = "miui.phrase"

.field public static blacklist CONTENT_URI:Landroid/net/Uri;

.field private static blacklist PHRASE_ADD_ACTIVITY_NAME:Ljava/lang/String;

.field private static blacklist PHRASE_EDIT_ACTIVITY_NAME:Ljava/lang/String;

.field private static blacklist PHRASE_PACKAGE_NAME:Ljava/lang/String;

.field public static blacklist WORDS:Ljava/lang/String;

.field public static blacklist WORDS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPHRASE_ADD_ACTIVITY_NAME()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_ADD_ACTIVITY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPHRASE_EDIT_ACTIVITY_NAME()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_EDIT_ACTIVITY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPHRASE_PACKAGE_NAME()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const-string v0, "com.miui.phrase"

    sput-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_PACKAGE_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "com.miui.phrase.AddPhraseActivity"

    sput-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_ADD_ACTIVITY_NAME:Ljava/lang/String;

    .line 17
    const-string v0, "com.miui.phrase.PhraseEditActivity"

    sput-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_EDIT_ACTIVITY_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "content://miui.phrase/phrase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/phrase/Phrases;->CONTENT_URI:Landroid/net/Uri;

    .line 20
    const-string v0, "content://miui.phrase/phrase/words"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/phrase/Phrases;->WORDS_CONTENT_URI:Landroid/net/Uri;

    .line 21
    const-string v0, "words"

    sput-object v0, Lcom/android/internal/phrase/Phrases;->WORDS:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
