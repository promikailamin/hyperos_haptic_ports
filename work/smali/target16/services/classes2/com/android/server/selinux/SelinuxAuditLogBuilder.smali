.class public Lcom/android/server/selinux/SelinuxAuditLogBuilder;
.super Ljava/lang/Object;
.source "SelinuxAuditLogBuilder.java"


# static fields
.field public static final NO_OP_MATCHER:Ljava/util/regex/Matcher;


# instance fields
.field public final mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

.field final mPathMatcher:Ljava/util/regex/Matcher;

.field final mScontextMatcher:Ljava/util/regex/Matcher;

.field final mTcontextMatcher:Ljava/util/regex/Matcher;

.field public mTokens:Ljava/util/Iterator;


# direct methods
.method public static synthetic $r8$lambda$RmLrRR-sNq61_piSupkC9JV2u9c(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "\\s+|="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xY0K9yOHYFVyQx0D3n8FFhBOhmU(I)[Ljava/lang/String;
    .registers 1

    .line 105
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    const-string/jumbo v0, "no-op^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->NO_OP_MATCHER:Ljava/util/regex/Matcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    .line 48
    const-string v0, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    invoke-direct {v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    .line 49
    sget-object v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->NO_OP_MATCHER:Ljava/util/regex/Matcher;

    .line 53
    :try_start_e
    const-string/jumbo v2, "u:r:(?<stype>%s):s0(:c)?(?<scategories>((,c)?\\d+)+)*"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 55
    invoke-static {v2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1
    :try_end_21
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_e .. :try_end_21} :catch_3c

    .line 59
    :try_start_21
    const-string/jumbo v2, "u:object_r:(?<ttype>\\w+):s0(:c)?(?<tcategories>((,c)?\\d+)+)*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2
    :try_end_2c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_21 .. :try_end_2c} :catch_39

    .line 60
    :try_start_2c
    const-string v3, "\"(?<path>/\\w+(/\\w+)?)(/\\w+)*\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1
    :try_end_36
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_46

    :catch_37
    move-exception v0

    goto :goto_3f

    :catch_39
    move-exception v0

    move-object v2, v1

    goto :goto_3f

    :catch_3c
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    .line 62
    :goto_3f
    const-string v3, "SelinuxAuditLogs"

    const-string v4, "Invalid pattern, setting every matcher to no-op."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_46
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    .line 66
    iput-object v2, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    .line 67
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    return-void
.end method

.method public static toCategories(Ljava/lang/String;)[I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_4
    const-string v0, ",c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda25;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;
    .registers 7

    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_162

    .line 82
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string/jumbo v2, "path"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_166

    goto/16 :goto_7c

    :sswitch_22
    const-string/jumbo v1, "tcontext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_7c

    :cond_2c
    const/4 v5, 0x7

    goto :goto_7c

    :sswitch_2e
    const-string v1, "granted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_7c

    :cond_37
    const/4 v5, 0x6

    goto :goto_7c

    :sswitch_39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_7c

    :cond_40
    const/4 v5, 0x5

    goto :goto_7c

    :sswitch_42
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_7c

    :cond_4c
    const/4 v5, 0x4

    goto :goto_7c

    :sswitch_4e
    const-string/jumbo v1, "scontext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_7c

    :cond_58
    const/4 v5, 0x3

    goto :goto_7c

    :sswitch_5a
    const-string/jumbo v1, "permissive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_7c

    :cond_64
    const/4 v5, 0x2

    goto :goto_7c

    :sswitch_66
    const-string/jumbo v1, "tclass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_7c

    :cond_70
    move v5, v4

    goto :goto_7c

    :sswitch_72
    const-string v1, "denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto :goto_7c

    :cond_7b
    move v5, v3

    :goto_7c
    const/4 v0, 0x0

    packed-switch v5, :pswitch_data_188

    goto :goto_0

    .line 115
    :pswitch_81
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0, v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v1

    if-nez v1, :cond_8a

    return-object v0

    .line 118
    :cond_8a
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v2, "ttype"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v2, "tcategories"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->toCategories(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    goto/16 :goto_0

    .line 86
    :pswitch_aa
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iput-boolean v4, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    goto/16 :goto_0

    .line 128
    :pswitch_b0
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0, v0}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    :pswitch_c4
    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v1

    :goto_c8
    if-nez v3, :cond_e9

    .line 94
    iget-object v2, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 95
    iget-object v2, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    const-string/jumbo v5, "}"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    move v3, v4

    goto :goto_c8

    .line 99
    :cond_e5
    invoke-interface {v1, v2}, Ljava/util/stream/Stream$Builder;->add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;

    goto :goto_c8

    :cond_e9
    if-nez v3, :cond_ec

    return-object v0

    .line 105
    :cond_ec
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    invoke-interface {v1}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    goto/16 :goto_0

    .line 108
    :pswitch_101
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0, v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v1

    if-nez v1, :cond_10a

    return-object v0

    .line 111
    :cond_10a
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v2, "stype"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v2, "scategories"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->toCategories(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    goto/16 :goto_0

    .line 133
    :pswitch_12a
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_133

    return-object v0

    .line 136
    :cond_133
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    goto/16 :goto_0

    .line 122
    :pswitch_145
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14e

    return-object v0

    .line 125
    :cond_14e
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    goto/16 :goto_0

    .line 89
    :pswitch_15c
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iput-boolean v3, v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    goto/16 :goto_0

    .line 142
    :cond_162
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    return-object p0

    nop

    :sswitch_data_166
    .sparse-switch
        -0x4f988465 -> :sswitch_72
        -0x34682e7c -> :sswitch_66
        -0x1eda3961 -> :sswitch_5a
        -0x1d21a224 -> :sswitch_4e
        0x7b -> :sswitch_42
        0x346425 -> :sswitch_39
        0x10b4f6bb -> :sswitch_2e
        0x4abf8abb -> :sswitch_22
    .end sparse-switch

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_15c
        :pswitch_145
        :pswitch_12a
        :pswitch_101
        :pswitch_c4
        :pswitch_b0
        :pswitch_aa
        :pswitch_81
    .end packed-switch
.end method

.method public nextTokenMatches(Ljava/util/regex/Matcher;)Z
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public reset(Ljava/lang/String;)V
    .registers 3

    .line 73
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 74
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 77
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    invoke-static {p0}, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->-$$Nest$mreset(Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;)V

    return-void
.end method
