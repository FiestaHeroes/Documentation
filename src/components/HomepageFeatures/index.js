import React from 'react';
import clsx from 'clsx';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'Pick your Flavor',
    Svg: require('@site/static/img/main-1.png').default,
    description: (
      <>
        No matter whether you love CN, want to experience old fiesta or want to create the next big
        server: This documentation is for you!
      </>
    ),
  },
  {
    title: 'Focus on What Matters',
    Svg: require('@site/static/img/main-2.png').default,
    description: (
      <>
        Fiesta Heroes helps you spend more time creating new things instead of wasting time trying out things.
      </>
    ),
  },
  {
    title: 'Archive',
    Svg: require('@site/static/img/main-3.png').default,
    description: (
      <>
        This project also includes an archive that has all the files you need to start your fiesta adventure.
      </>
    ),
  },
];

function Feature({Svg, title, description}) {
  return (
    <div className={clsx('col col--4')}>
      <div className="text--center">
        <img className={styles.featureSvg} role="img" src={Svg} />
      </div>
      <div className="text--center padding-horiz--md">
        <h3>{title}</h3>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
