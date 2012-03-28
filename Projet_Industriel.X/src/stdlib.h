#ifndef _STDLIB_H_
#define _STDLIB_H_

/* Standard utility functions */

#ifndef _STDDEF_H_
#include <stddef.h>
#endif /* _STDDEF_H_ */

#define	RAND_MAX	32767		/* max value returned by rand() */
#define	EXIT_SUCCESS	0
#define	EXIT_FAILURE	1

#define	MB_CUR_MAX	1		/* locale currently not supported */

typedef struct {
	int	quot;	/* quotient */
	int	rem;	/* remainder */
} div_t;				/* div() return type */
typedef struct {
	unsigned	quot;	/* quotient */
	unsigned	rem;	/* remainder */
} udiv_t;				/* div() return type */
typedef struct {
	long 	quot;	/* quotient */
	long 	rem;	/* remainder */
} ldiv_t;				/* ldiv() return type */
typedef struct {
	unsigned long 	quot;	/* quotient */
	unsigned long 	rem;	/* remainder */
} uldiv_t;				/* ldiv() return type */

#ifndef __LIBBUILD__
#if __DBL_DIG__ == __LDBL_DIG__
#define atof _datof
#define strtod _dstrtod
#endif
#endif /* __LIBBUILD__ */

#if defined(__C32_VERSION__)
extern double		atof(const char *);
extern long double	_datof(const char *);
extern float		strtof(const char *, char **);
extern long double	strtod(const char *, char **);
extern long double	_dstrtod(const char *, char **);
#else
extern double		atof(const char *);
extern double		strtod(const char *, const char **);
#endif 

extern int			atoi(const char *);
extern unsigned		xtoi(const char *);
extern long			atol(const char *);
extern long			strtol(const char *, char **, int);
extern unsigned long			strtoul(const char *, char **, int);
#if !defined(__STRICT_ANSI__) 
extern long long			strtoll(const char *, char **, int);
extern unsigned long long			strtoull(const char *, char **, int);
#endif
extern int			rand(void);
extern void			srand(unsigned int);
extern void *		calloc(size_t, size_t);
extern div_t		div(int numer, int denom);
extern udiv_t		udiv(unsigned numer, unsigned denom);
extern ldiv_t		ldiv(long numer, long denom);
extern uldiv_t		uldiv(unsigned long numer,unsigned  long denom);

#define	max(a,b)	(((a) > (b)) ? (a) : (b))
#define	min(a,b)	(((a) < (b)) ? (a) : (b))

extern void *		malloc(size_t);
extern void		free(void *);
extern void *		realloc(void *, size_t);

extern void	abort(void);
extern void	exit(int);
extern int	atexit(void (*)(void));
extern char *	getenv(const char *);
extern char **	environ;
extern int	system(char *);
extern void	qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void *	bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int	abs(int);
extern long	labs(long);

extern char *	itoa(char * buf, int val, int base);
extern char *	utoa(char * buf, unsigned val, int base);
extern char *	ltoa(char * buf, long val, int base);

#if !defined (_DEFINED_ULTOA)
extern char *	ultoa(char * buf, unsigned long val, int base);
#undef _STDLIB_ULTOA
#define _STDLIB_ULTOA
#endif

#endif /* _STDLIB_H_ */
