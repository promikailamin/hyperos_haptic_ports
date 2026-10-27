.class public Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlickrPhoto"
.end annotation


# static fields
.field private static final blacklist GROUPING_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist SETS:Ljava/lang/String; = "sets"

.field private static final blacklist TAGS:Ljava/lang/String; = "tags"

.field private static final blacklist URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist grouping:Ljava/lang/String;

.field private blacklist groupingId:Ljava/lang/String;

.field private blacklist photo:Ljava/lang/String;

.field private blacklist user:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1036
    const-string v0, "http://(?:www.)?flickr.com/photos/([^/?#&]+)/?([^/?#&]+)?/?.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->URL_PATTERN:Ljava/util/regex/Pattern;

    .line 1038
    const-string v0, "http://(?:www.)?flickr.com/photos/([^/?#&]+)/(tags|sets)/([^/?#&]+)/?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->GROUPING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1052
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p5}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 1055
    const-string/jumbo p5, "tags"

    invoke-virtual {p5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 1056
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    .line 1058
    const-string/jumbo p1, "show"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object p2, v1

    :goto_1c
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    .line 1059
    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    .line 1060
    iput-object p4, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    goto :goto_2b

    .line 1062
    :cond_23
    iput-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    .line 1063
    iput-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    .line 1064
    iput-object p5, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    .line 1065
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    .line 1067
    :goto_2b
    return-void
.end method

.method public static blacklist getPhotoURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1123
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getTagsURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/tags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getUserSetsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/sets/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getUserTagsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/tags/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getUserURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
    .registers 13

    .line 1082
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->GROUPING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1083
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_23

    .line 1084
    new-instance v4, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 1087
    :cond_23
    move-object v9, p1

    sget-object p1, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1088
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 1089
    new-instance v5, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 1091
    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getGrouping()Ljava/lang/String;
    .registers 2

    .line 1071
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroupingId()Ljava/lang/String;
    .registers 2

    .line 1072
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1096
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 1097
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUser()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, v2

    :goto_19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getPhoto()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getPhoto()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v2

    :goto_28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGrouping()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGrouping()Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_36
    move-object v1, v2

    :goto_37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGroupingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGroupingId()Ljava/lang/String;

    move-result-object v2

    :cond_44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    return-object v0
.end method

.method public blacklist getPhoto()Ljava/lang/String;
    .registers 2

    .line 1070
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUrl()Ljava/lang/String;
    .registers 3

    .line 1106
    const-string/jumbo v0, "sets"

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1107
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUserSetsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1108
    :cond_14
    const-string/jumbo v0, "tags"

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1109
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 1110
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUserTagsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1112
    :cond_2c
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getTagsURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1114
    :cond_33
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 1115
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getPhotoURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1117
    :cond_40
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUserURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUser()Ljava/lang/String;
    .registers 2

    .line 1069
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isHtml()Z
    .registers 2

    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMedia()Z
    .registers 2

    .line 1075
    const/4 v0, 0x1

    return v0
.end method
