import React from 'react';
import clsx from 'clsx';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'Development',
    description: (
      <>
        Our goal is to provide the best foundation for creating your own server. We are dedicated to developing, maintaining, and fixing any retail or base content within our sets.
      </>
    ),
  },
  {
    title: 'Extensive Fileset Support',
    description: (
      <>
      NA2016 - Fiesta Online (Gamigo)<br></br>
      CN2012 - 光之萌约 (Love Of Light)<br></br>
      TW2008 - 聖光2 (Holy Light 2)<br></br>
      </>
    ),
  },
  {
    title: 'Archive',
    description: (
      <>
        Furthermore, we are also hosting our own archive, where we store official content from over the years, such as images, articles, videos, clients, tools, and more.
      </>
    ),
  },
];

function Feature({Svg, title, description}) {
  return (
    <div className={clsx('col col--4 padding-vert--md')}>
      <div className="text--center padding-horiz--md padding-vert--md">
        <h3 className="padding-vert--md">{title}</h3>
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
