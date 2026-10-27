.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final greylist-max-o EXACT:I = 0x0

.field public static final whitelist NO_MATCH:I = -0x1

.field private static final greylist-max-o NUMBER:I = 0x1

.field private static final greylist-max-o TEXT:I = 0x2


# instance fields
.field private greylist mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCode:I

.field private final greylist mText:Ljava/lang/String;

.field private final greylist-max-o mWhich:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    .line 134
    const/4 p1, -0x1

    iput p1, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 136
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    .line 142
    iput p1, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 144
    iput-object p2, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private static blacklist createChild(Ljava/lang/String;)Landroid/content/UriMatcher;
    .registers 6

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "*"

    const-string v4, "#"

    sparse-switch v0, :sswitch_data_36

    :cond_d
    goto :goto_1e

    :sswitch_e
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_1f

    :sswitch_16
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_1f

    :goto_1e
    const/4 v0, -0x1

    :goto_1f
    packed-switch v0, :pswitch_data_40

    .line 210
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1, p0}, Landroid/content/UriMatcher;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 208
    :pswitch_28
    new-instance p0, Landroid/content/UriMatcher;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Landroid/content/UriMatcher;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 206
    :pswitch_2f
    new-instance p0, Landroid/content/UriMatcher;

    invoke-direct {p0, v2, v4}, Landroid/content/UriMatcher;-><init>(ILjava/lang/String;)V

    return-object p0

    nop

    :sswitch_data_36
    .sparse-switch
        0x23 -> :sswitch_16
        0x2a -> :sswitch_e
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public whitelist addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    .line 164
    if-ltz p3, :cond_62

    .line 168
    nop

    .line 169
    const/4 v0, 0x0

    if-eqz p2, :cond_21

    .line 170
    nop

    .line 172
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_1a

    .line 173
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 175
    :cond_1a
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_22

    .line 169
    :cond_21
    const/4 p2, 0x0

    .line 178
    :goto_22
    if-eqz p2, :cond_26

    array-length v1, p2

    goto :goto_27

    :cond_26
    move v1, v0

    .line 179
    :goto_27
    nop

    .line 180
    const/4 v2, -0x1

    move v3, v2

    move-object v2, p0

    :goto_2b
    if-ge v3, v1, :cond_5f

    .line 181
    if-gez v3, :cond_31

    move-object v4, p1

    goto :goto_33

    :cond_31
    aget-object v4, p2, v3

    .line 182
    :goto_33
    iget-object v5, v2, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 186
    move v7, v0

    :goto_3a
    if-ge v7, v6, :cond_50

    .line 187
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    .line 188
    iget-object v9, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 189
    nop

    .line 190
    move-object v2, v8

    goto :goto_50

    .line 186
    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 193
    :cond_50
    :goto_50
    if-ne v7, v6, :cond_5c

    .line 195
    invoke-static {v4}, Landroid/content/UriMatcher;->createChild(Ljava/lang/String;)Landroid/content/UriMatcher;

    move-result-object v4

    .line 196
    iget-object v2, v2, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    move-object v2, v4

    .line 180
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 200
    :cond_5f
    iput p3, v2, Landroid/content/UriMatcher;->mCode:I

    .line 201
    return-void

    .line 165
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is invalid: it must be positive"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist match(Landroid/net/Uri;)I
    .registers 17

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 227
    nop

    .line 229
    if-nez v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    .line 230
    iget v0, p0, Landroid/content/UriMatcher;->mCode:I

    return v0

    .line 233
    :cond_14
    const/4 v2, -0x1

    move-object v3, p0

    move v4, v2

    :goto_17
    if-ge v4, v1, :cond_73

    .line 234
    if-gez v4, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    goto :goto_26

    :cond_20
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 235
    :goto_26
    iget-object v6, v3, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 236
    if-nez v6, :cond_2b

    .line 237
    goto :goto_73

    .line 239
    :cond_2b
    nop

    .line 240
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 241
    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v7

    :goto_33
    if-ge v9, v3, :cond_6c

    .line 242
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/UriMatcher;

    .line 244
    iget v11, v10, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v11, :pswitch_data_76

    goto :goto_65

    .line 261
    :pswitch_41
    goto :goto_64

    .line 251
    :pswitch_42
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    .line 252
    move v12, v7

    :goto_47
    if-ge v12, v11, :cond_59

    .line 253
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 254
    const/16 v14, 0x30

    if-lt v13, v14, :cond_65

    const/16 v14, 0x39

    if-le v13, v14, :cond_56

    .line 255
    goto :goto_65

    .line 252
    :cond_56
    add-int/lit8 v12, v12, 0x1

    goto :goto_47

    .line 258
    :cond_59
    nop

    .line 259
    goto :goto_64

    .line 246
    :pswitch_5b
    iget-object v11, v10, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_65

    .line 247
    nop

    .line 264
    :goto_64
    move-object v8, v10

    :cond_65
    :goto_65
    if-eqz v8, :cond_69

    .line 265
    move-object v3, v8

    goto :goto_6d

    .line 241
    :cond_69
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_6c
    move-object v3, v8

    .line 268
    :goto_6d
    if-nez v3, :cond_70

    .line 269
    return v2

    .line 233
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 273
    :cond_73
    :goto_73
    iget v0, v3, Landroid/content/UriMatcher;->mCode:I

    return v0

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method
