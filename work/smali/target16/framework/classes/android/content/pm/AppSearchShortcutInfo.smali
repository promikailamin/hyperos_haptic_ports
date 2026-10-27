.class public Landroid/content/pm/AppSearchShortcutInfo;
.super Landroid/app/appsearch/GenericDocument;
.source "AppSearchShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AppSearchShortcutInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist IS_DISABLED:Ljava/lang/String; = "Dis"

.field public static final blacklist IS_DYNAMIC:Ljava/lang/String; = "Dyn"

.field public static final blacklist IS_IMMUTABLE:Ljava/lang/String; = "Im"

.field public static final blacklist IS_MANIFEST:Ljava/lang/String; = "Man"

.field public static final blacklist KEY_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final blacklist KEY_CAPABILITY:Ljava/lang/String; = "capability"

.field public static final blacklist KEY_CAPABILITY_BINDINGS:Ljava/lang/String; = "capabilityBindings"

.field public static final blacklist KEY_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final blacklist KEY_DISABLED_MESSAGE:Ljava/lang/String; = "disabledMessage"

.field public static final blacklist KEY_DISABLED_REASON:Ljava/lang/String; = "disabledReason"

.field public static final blacklist KEY_EXTRAS:Ljava/lang/String; = "extras"

.field public static final blacklist KEY_FLAGS:Ljava/lang/String; = "flags"

.field public static final blacklist KEY_ICON_RES_ID:Ljava/lang/String; = "iconResId"

.field public static final blacklist KEY_ICON_RES_NAME:Ljava/lang/String; = "iconResName"

.field public static final blacklist KEY_ICON_URI:Ljava/lang/String; = "iconUri"

.field public static final blacklist KEY_INTENTS:Ljava/lang/String; = "intents"

.field public static final blacklist KEY_INTENT_PERSISTABLE_EXTRAS:Ljava/lang/String; = "intentPersistableExtras"

.field public static final blacklist KEY_LOCUS_ID:Ljava/lang/String; = "locusId"

.field public static final blacklist KEY_LONG_LABEL:Ljava/lang/String; = "longLabel"

.field public static final blacklist KEY_PERSON:Ljava/lang/String; = "person"

.field public static final blacklist KEY_SHORT_LABEL:Ljava/lang/String; = "shortLabel"

.field public static final blacklist NOT_DISABLED:Ljava/lang/String; = "nDis"

.field public static final blacklist NOT_DYNAMIC:Ljava/lang/String; = "nDyn"

.field public static final blacklist NOT_IMMUTABLE:Ljava/lang/String; = "nIm"

.field public static final blacklist NOT_MANIFEST:Ljava/lang/String; = "nMan"

.field public static final blacklist SCHEMA:Landroid/app/appsearch/AppSearchSchema;

.field public static final blacklist SCHEMA_TYPE:Ljava/lang/String; = "Shortcut"

.field public static final blacklist SCHEMA_VERSION:I = 0x3

.field public static final blacklist SHORTCUT_TTL:J


# direct methods
.method public static synthetic blacklist $r8$lambda$kireZJaXE6bkXyhT89ZMVSaoMx4(Landroid/content/pm/AppSearchShortcutInfo;[B)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/pm/AppSearchShortcutInfo;->transformToBundle([B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smflattenFlags(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/AppSearchShortcutInfo;->flattenFlags(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtransformToByteArray(Landroid/os/PersistableBundle;)[B
    .registers 1

    invoke-static {p0}, Landroid/content/pm/AppSearchShortcutInfo;->transformToByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/content/pm/AppSearchShortcutInfo;->SHORTCUT_TTL:J

    .line 165
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$Builder;

    const-string v1, "Shortcut"

    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v2, "activity"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 168
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v4, "shortLabel"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v4, "longLabel"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "disabledMessage"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 186
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "categories"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "intents"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    const-string v5, "intentPersistableExtras"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    const-string/jumbo v5, "person"

    const-string v6, "ShortcutPerson"

    invoke-direct {v1, v5, v6}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v5, "locusId"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    const-string v5, "extras"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "flags"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    const-string v5, "iconResId"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "iconResName"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "iconUri"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "disabledReason"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 245
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "capability"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "capabilityBindings"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 259
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchSchema$Builder;->build()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    sput-object v0, Landroid/content/pm/AppSearchShortcutInfo;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    .line 165
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/GenericDocument;)V
    .registers 2

    .line 327
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 328
    return-void
.end method

.method private static blacklist flagToString(II)Ljava/lang/String;
    .registers 2

    .line 746
    sparse-switch p1, :sswitch_data_2e

    .line 756
    const/4 p0, 0x0

    return-object p0

    .line 754
    :sswitch_5
    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    const-string p0, "Im"

    goto :goto_e

    :cond_b
    const-string/jumbo p0, "nIm"

    :goto_e
    return-object p0

    .line 752
    :sswitch_f
    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    const-string p0, "Dis"

    goto :goto_18

    :cond_15
    const-string/jumbo p0, "nDis"

    :goto_18
    return-object p0

    .line 750
    :sswitch_19
    and-int/2addr p0, p1

    if-eqz p0, :cond_1f

    const-string p0, "Man"

    goto :goto_22

    :cond_1f
    const-string/jumbo p0, "nMan"

    :goto_22
    return-object p0

    .line 748
    :sswitch_23
    and-int/2addr p0, p1

    if-eqz p0, :cond_29

    const-string p0, "Dyn"

    goto :goto_2c

    :cond_29
    const-string/jumbo p0, "nDyn"

    :goto_2c
    return-object p0

    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_23
        0x20 -> :sswitch_19
        0x40 -> :sswitch_f
        0x100 -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist flattenFlags(I)[Ljava/lang/String;
    .registers 5

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 733
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/16 v3, 0x1f

    if-ge v2, v3, :cond_19

    .line 734
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    .line 735
    invoke-static {p0, v3}, Landroid/content/pm/AppSearchShortcutInfo;->flagToString(II)Ljava/lang/String;

    move-result-object v3

    .line 736
    if-eqz v3, :cond_16

    .line 737
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 740
    :cond_19
    new-array p0, v1, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist instance(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/AppSearchShortcutInfo;
    .registers 4

    .line 335
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Landroid/content/pm/AppSearchShortcutInfo$Builder;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setCategories(Ljava/util/Set;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setCreationTimestampMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AppSearchShortcutInfo$Builder;

    .line 345
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setFlags(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIconResId(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIconResName(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIconUri(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setDisabledReason(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setLocusId(Landroid/content/LocusId;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getCapabilityBindingsInternal()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setCapabilityBindings(Ljava/util/Map;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object p0

    sget-wide v0, Landroid/content/pm/AppSearchShortcutInfo;->SHORTCUT_TTL:J

    .line 353
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setTtlMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object p0

    check-cast p0, Landroid/content/pm/AppSearchShortcutInfo$Builder;

    .line 354
    invoke-virtual {p0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->build()Landroid/content/pm/AppSearchShortcutInfo;

    move-result-object p0

    .line 336
    return-object p0
.end method

.method static synthetic blacklist lambda$parseCapabilityBindings$3(Ljava/util/Map;Ljava/lang/String;)V
    .registers 7

    .line 807
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 808
    return-void

    .line 810
    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 811
    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_19

    goto :goto_63

    .line 814
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 815
    add-int/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 816
    if-eq v0, v2, :cond_62

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v0, v2, :cond_2d

    goto :goto_62

    .line 819
    :cond_2d
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 820
    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 821
    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 822
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v4}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :cond_44
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 825
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 826
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_58
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    return-void

    .line 817
    :cond_62
    :goto_62
    return-void

    .line 812
    :cond_63
    :goto_63
    return-void
.end method

.method static synthetic blacklist lambda$toShortcutInfo$0(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 383
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 384
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 387
    :cond_e
    const/4 v0, 0x0

    :try_start_f
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_13
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    .line 388
    :catch_14
    move-exception p0

    .line 391
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$toShortcutInfo$1(I)[Landroid/content/Intent;
    .registers 1

    .line 392
    new-array p0, p0, [Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic blacklist lambda$toShortcutInfo$2(I)[Landroid/os/Bundle;
    .registers 1

    .line 396
    new-array p0, p0, [Landroid/os/Bundle;

    return-object p0
.end method

.method private static blacklist parseCapabilityBindings([Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 802
    if-eqz p0, :cond_19

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    .line 805
    :cond_6
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 806
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 830
    return-object v0

    .line 803
    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist parseFlag(Ljava/lang/String;)I
    .registers 4

    .line 772
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_42

    :cond_9
    goto :goto_32

    :sswitch_a
    const-string v0, "Man"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    move p0, v2

    goto :goto_33

    :sswitch_14
    const-string v0, "Dyn"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    move p0, v1

    goto :goto_33

    :sswitch_1e
    const-string v0, "Dis"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x2

    goto :goto_33

    :sswitch_28
    const-string v0, "Im"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x3

    goto :goto_33

    :goto_32
    const/4 p0, -0x1

    :goto_33
    packed-switch p0, :pswitch_data_54

    .line 782
    return v1

    .line 780
    :pswitch_37
    const/16 p0, 0x100

    return p0

    .line 778
    :pswitch_3a
    const/16 p0, 0x40

    return p0

    .line 776
    :pswitch_3d
    const/16 p0, 0x20

    return p0

    .line 774
    :pswitch_40
    return v2

    nop

    :sswitch_data_42
    .sparse-switch
        0x944 -> :sswitch_28
        0x10c6e -> :sswitch_1e
        0x10e59 -> :sswitch_14
        0x12d3a -> :sswitch_a
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
    .end packed-switch
.end method

.method private static blacklist parseFlags([Ljava/lang/String;)I
    .registers 4

    .line 761
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 762
    return v0

    .line 764
    :cond_4
    nop

    .line 765
    move v1, v0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 766
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutInfo;->parseFlag(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 768
    :cond_13
    return v1
.end method

.method private static blacklist parsePerson([Landroid/app/appsearch/GenericDocument;)[Landroid/app/Person;
    .registers 5

    .line 788
    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [Landroid/app/Person;

    return-object p0

    .line 789
    :cond_6
    array-length v1, p0

    new-array v1, v1, [Landroid/app/Person;

    .line 790
    nop

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_20

    .line 791
    aget-object v2, p0, v0

    .line 792
    if-nez v2, :cond_12

    goto :goto_1d

    .line 793
    :cond_12
    new-instance v3, Landroid/content/pm/AppSearchShortcutPerson;

    invoke-direct {v3, v2}, Landroid/content/pm/AppSearchShortcutPerson;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 794
    invoke-virtual {v3}, Landroid/content/pm/AppSearchShortcutPerson;->toPerson()Landroid/app/Person;

    move-result-object v2

    aput-object v2, v1, v0

    .line 790
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 796
    :cond_20
    return-object v1
.end method

.method public static blacklist toGenericDocuments(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/appsearch/GenericDocument;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 439
    invoke-static {v1}, Landroid/content/pm/AppSearchShortcutInfo;->instance(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/AppSearchShortcutInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    goto :goto_d

    .line 441
    :cond_21
    return-object v0
.end method

.method private blacklist transformToBundle([B)Landroid/os/Bundle;
    .registers 5

    .line 703
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 704
    return-object v0

    .line 706
    :cond_4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_27

    .line 708
    :try_start_c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 709
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1d

    .line 710
    nop

    .line 711
    :try_start_19
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_27

    .line 710
    return-object p1

    .line 707
    :catchall_1d
    move-exception p1

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v1

    :try_start_23
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    .line 711
    :catch_27
    move-exception p1

    .line 712
    return-object v0
.end method

.method private static blacklist transformToByteArray(Landroid/os/PersistableBundle;)[B
    .registers 3

    .line 689
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_22

    .line 691
    :try_start_8
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 692
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    .line 693
    :try_start_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_22

    .line 692
    return-object p0

    .line 690
    :catchall_18
    move-exception p0

    :try_start_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw p0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_22

    .line 693
    :catch_22
    move-exception p0

    .line 694
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist transformToPersistableBundle([B)Landroid/os/PersistableBundle;
    .registers 4

    .line 721
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 722
    return-object v0

    .line 724
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_1b

    .line 725
    :try_start_9
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 726
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1b

    .line 725
    return-object p1

    .line 724
    :catchall_11
    move-exception p1

    :try_start_12
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v1

    :try_start_17
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw p1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 726
    :catch_1b
    move-exception p1

    .line 727
    return-object v0
.end method


# virtual methods
.method public blacklist toShortcutInfo(I)Landroid/content/pm/ShortcutInfo;
    .registers 33

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/content/pm/AppSearchShortcutInfo;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 364
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 366
    move-object v4, v2

    goto :goto_16

    :cond_11
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v4, v1

    .line 373
    :goto_16
    nop

    .line 374
    const-string/jumbo v1, "shortLabel"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 375
    const-string/jumbo v1, "longLabel"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 376
    const-string v1, "disabledMessage"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 377
    const-string v1, "categories"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 378
    if-nez v1, :cond_35

    .line 379
    move-object v15, v2

    goto :goto_3f

    :cond_35
    new-instance v5, Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v15, v5

    .line 380
    :goto_3f
    const-string v1, "intents"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 381
    const/4 v5, 0x0

    if-nez v1, :cond_4b

    .line 382
    new-array v1, v5, [Landroid/content/Intent;

    goto :goto_64

    .line 392
    :cond_4b
    nop

    .line 382
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v7, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v7, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda2;-><init>()V

    .line 392
    invoke-interface {v1, v7}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    .line 393
    :goto_64
    const-string v7, "intentPersistableExtras"

    invoke-virtual {v0, v7}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyBytesArray(Ljava/lang/String;)[[B

    move-result-object v7

    .line 394
    if-nez v7, :cond_6e

    .line 395
    move-object v7, v2

    goto :goto_87

    .line 396
    :cond_6e
    nop

    .line 395
    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/AppSearchShortcutInfo;)V

    .line 396
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda4;

    invoke-direct {v8}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/Bundle;

    .line 397
    :goto_87
    if-eqz v1, :cond_ab

    .line 398
    move v8, v5

    :goto_8a
    array-length v10, v1

    if-ge v8, v10, :cond_ab

    .line 399
    aget-object v10, v1, v8

    .line 400
    if-eqz v10, :cond_a8

    if-eqz v7, :cond_a8

    array-length v11, v7

    if-le v11, v8, :cond_a8

    aget-object v11, v7, v8

    if-eqz v11, :cond_a8

    aget-object v11, v7, v8

    .line 401
    invoke-virtual {v11}, Landroid/os/Bundle;->size()I

    move-result v11

    if-nez v11, :cond_a3

    .line 402
    goto :goto_a8

    .line 404
    :cond_a3
    aget-object v11, v7, v8

    invoke-virtual {v10, v11}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 398
    :cond_a8
    :goto_a8
    add-int/lit8 v8, v8, 0x1

    goto :goto_8a

    .line 407
    :cond_ab
    const-string/jumbo v7, "person"

    invoke-virtual {v0, v7}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyDocumentArray(Ljava/lang/String;)[Landroid/app/appsearch/GenericDocument;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/AppSearchShortcutInfo;->parsePerson([Landroid/app/appsearch/GenericDocument;)[Landroid/app/Person;

    move-result-object v27

    .line 408
    const-string/jumbo v7, "locusId"

    invoke-virtual {v0, v7}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 409
    if-nez v7, :cond_c0

    goto :goto_c5

    :cond_c0
    new-instance v2, Landroid/content/LocusId;

    invoke-direct {v2, v7}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    :goto_c5
    move-object/from16 v28, v2

    .line 410
    const-string v2, "extras"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 411
    invoke-direct {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->transformToPersistableBundle([B)Landroid/os/PersistableBundle;

    move-result-object v18

    .line 412
    const-string v2, "flags"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutInfo;->parseFlags([Ljava/lang/String;)I

    move-result v21

    .line 413
    const-string v2, "iconResId"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v2, v7

    .line 414
    const-string v7, "iconResName"

    invoke-virtual {v0, v7}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 415
    const-string v7, "iconUri"

    invoke-virtual {v0, v7}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 416
    const-string v7, "disabledReason"

    invoke-virtual {v0, v7}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 417
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_105

    .line 418
    invoke-virtual {v0, v7}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v26, v5

    goto :goto_107

    .line 419
    :cond_105
    move/from16 v26, v5

    .line 420
    :goto_107
    nop

    .line 421
    const-string v5, "capabilityBindings"

    invoke-virtual {v0, v5}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/AppSearchShortcutInfo;->parseCapabilityBindings([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v30

    .line 422
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    .line 423
    move/from16 v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/AppSearchShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/AppSearchShortcutInfo;->getCreationTimestampMillis()J

    move-result-wide v19

    const/16 v24, 0x0

    const/16 v29, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v17, 0x7fffffff

    move-object/from16 v16, v1

    move/from16 v1, p1

    invoke-direct/range {v0 .. v30}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    return-object v0
.end method
